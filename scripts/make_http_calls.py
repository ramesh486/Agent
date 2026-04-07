import os
import json
import requests
from typing import Optional, Dict, Any, Tuple

def call_oci_atp(
    hostname: Optional[str] = None,
    method: Optional[str] = None,
    bearer_token: Optional[str] = None,
    basic_auth: Optional[Tuple[str, str]] = None,
    body: Optional[Dict[str, Any]] = None,
    query_params: Optional[Dict[str, Any]] = None,
    extra_headers: Optional[Dict[str, str]] = None,
    timeout: int = 30
) -> requests.Response:
    if not hostname:
        raise ValueError("`hostname` must be provided and non-empty.")
    http_method = method.upper() if method else "GET"

    # build auth and headers
    headers: Dict[str, str] = {}
    auth = None
    if bearer_token:
        headers["Authorization"] = f"Bearer {bearer_token}"
    elif basic_auth:
        auth = basic_auth
    if body is not None:
        headers.setdefault("Content-Type", "application/json")
    if extra_headers:
        headers.update(extra_headers)

    resp = requests.request(
        method=http_method,
        url=hostname,
        headers=headers,
        params=query_params,
        json=body,
        auth=auth,
        timeout=timeout
    )
    resp.raise_for_status()
    return resp

if __name__ == "__main__":
    # env inputs
    HOSTNAME = os.getenv("ATP_HOST", "").rstrip("/")
    bearer = os.getenv("ATP_BEARER_TOKEN")
    basic_u = os.getenv("BASIC_USER")
    basic_p = os.getenv("BASIC_PASS")
    basic = (basic_u, basic_p) if not bearer and basic_u and basic_p else None

    # q filter
    raw_q = os.getenv("Q_PARAM", "").strip()
    qp: Dict[str, Any] = {}
    if raw_q:
        qp["q"] = raw_q

    # extra normal params
    for key in ("LIMIT", "ACTIVE"):
        v = os.getenv(key)
        if v:
            qp[key.lower()] = v

    # body
    raw_body = os.getenv("BODY_JSON", "").strip()
    body = json.loads(raw_body) if raw_body else None

    # method
    method = os.getenv("HTTP_METHOD", "GET").upper()

    # call and output only JSON
    try:
        r = call_oci_atp(
            hostname=HOSTNAME,
            method=method,
            bearer_token=bearer,
            basic_auth=basic,
            body=body,
            query_params=qp
        )
        out = {
            "status_code": r.status_code,
            "response": r.json() if r.headers.get("Content-Type", "").startswith("application/json") else r.text
        }
    except Exception as e:
        out = {
            "error": str(e)
        }

    except Exception as e:
        out = {
            "error": str(e)
        }

    # write the JSON blob to a file instead of printing it
    output_path = os.getenv("OUTPUT_FILE", "response.json")
    try:
        with open(output_path, "w", encoding="utf-8") as f:
            json.dump(out, f, separators=(",", ":"), ensure_ascii=False)
    except Exception as write_err:
        # fallback: if file write fails, at least print to stderr
        import sys
        print(f"Failed to write output file {output_path}: {write_err}", file=sys.stderr)
        print(json.dumps(out, separators=(",", ":"), ensure_ascii=False), file=sys.stderr)




# import os
# import json
# import requests
# from typing import Optional, Dict, Any, Tuple

# def call_oci_atp(
#     hostname: Optional[str] = None,
#     method: Optional[str] = None,
#     bearer_token: Optional[str] = None,
#     basic_auth: Optional[Tuple[str, str]] = None,
#     body: Optional[Dict[str, Any]] = None,
#     query_params: Optional[Dict[str, Any]] = None,
#     extra_headers: Optional[Dict[str, str]] = None,
#     timeout: int = 30
# ) -> requests.Response:
#     """
#     Send an HTTP request to an OCI ATP (ORDS) endpoint, using EITHER:
#       - Bearer token (if `bearer_token` is set), OR
#       - Basic auth (if `basic_auth` is a (user, pass) tuple).
#     All other parameters (body, query_params, extra_headers) are optional.

#     Parameters:
#     -----------
#     hostname : str
#         The full URL of your ORDS endpoint (e.g. "https://.../ords/schema/users/").
#     method : str, optional
#         HTTP method ("GET", "POST", etc.). Defaults to "GET".
#     bearer_token : str, optional
#         If provided, adds an "Authorization: Bearer <token>" header.
#     basic_auth : (str, str), optional
#         A (username, password) tuple for HTTP Basic Authentication.
#         Only used if `bearer_token` is not provided.
#     body : dict, optional
#         A JSON‐serializable payload to send in the request body.
#     query_params : dict, optional
#         A dict of query‐string parameters (requests will URL-encode automatically).
#     extra_headers : dict, optional
#         Any additional HTTP headers. Overrides Authorization if the same key is used.
#     timeout : int, optional
#         Seconds to wait before timing out (defaults to 30).

#     Returns:
#     --------
#     requests.Response
#         The HTTP response object (raise_for_status() is already called).

#     Raises:
#     -------
#     ValueError: If `hostname` is missing.
#     requests.RequestException: On network errors or 4xx/5xx status.
#     """
#     if not hostname:
#         raise ValueError("`hostname` must be provided and non-empty.")

#     http_method = method.upper() if method else "GET"
#     url = hostname

#     # ─── Build headers and auth ───────────────────────────────────────
#     headers: Dict[str, str] = {}
#     auth: Optional[Tuple[str, str]] = None

#     # 1) Bearer token takes priority:
#     if bearer_token:
#         headers["Authorization"] = f"Bearer {bearer_token}"
#     # 2) Otherwise, if basic_auth tuple is provided, pass it into `auth=`:
#     elif basic_auth:
#         auth = basic_auth
#     # 3) If neither is set, we leave headers/auth empty → unauthenticated request

#     # If there's a JSON body, set Content-Type (requests will set it automatically anyway if you use json=)
#     if body is not None:
#         headers.setdefault("Content-Type", "application/json")

#     # Merge extra_headers last (they override any existing keys)
#     if extra_headers:
#         for k, v in extra_headers.items():
#             headers[k] = v

#     # ─── Fire the request ───────────────────────────────────────────────
#     try:
#         response = requests.request(
#             method=http_method,
#             url=url,
#             headers=headers,
#             params=query_params,
#             json=body,
#             auth=auth,
#             timeout=timeout
#         )
#         response.raise_for_status()
#         return response

#     except requests.RequestException:
#         # Re‐raise to let caller handle/log the exact error
#         raise


# if __name__ == "__main__":
#     # ─── Step A: Read environment variables ─────────────────────────────
#     HOSTNAME = os.getenv(
#         "ATP_HOST",
#         "https://aidhsfhdsf.adb.us-ashburn-1.oraclecloudapps.com/ords/djshbhsdbf/users/"
#     ).rstrip("/") + "/"
#     # Try Bearer first:
#     bearer_token = os.getenv("ATP_BEARER_TOKEN")
#     # If no Bearer, check for Basic credentials:
#     basic_user = os.getenv("BASIC_USER")
#     basic_pass = os.getenv("BASIC_PASS")
#     basic_auth: Optional[Tuple[str, str]] = None
#     if not bearer_token and basic_user and basic_pass:
#         basic_auth = (basic_user, basic_pass)

#     # Q_PARAM must be a raw JSON object string, e.g. {"email":"foo@example.com"}
#     raw_q = os.getenv("Q_PARAM", "").strip()
#     query_params: Dict[str, Any] = {}
#     if raw_q:
#         # We do NOT json.loads here; ORDS expects q=<JSON string>. requests will URL-encode it.
#         query_params["q"] = raw_q

#     # Read any “normal” query params as well (e.g. LIMIT, ACTIVE, etc.)
#     # These must be simple strings or numbers:
#     limit = os.getenv("LIMIT")
#     active = os.getenv("ACTIVE")
#     if limit:
#         query_params["limit"] = limit
#     if active:
#         query_params["active"] = active

#     # BODY_JSON, if present, must be valid JSON. We parse it into a Python dict.
#     raw_body = os.getenv("BODY_JSON", "").strip()
#     body_payload: Optional[Dict[str, Any]] = None
#     if raw_body:
#         try:
#             body_payload = json.loads(raw_body)
#         except json.JSONDecodeError as e:
#             print("ERROR: BODY_JSON is not valid JSON:", str(e))
#             exit(1)

#     # HTTP method (default GET if unset)
#     method = os.getenv("HTTP_METHOD", "GET").upper()

#     # ─── Step B: Call the ORDS endpoint ─────────────────────────────────
#     try:
#         response = call_oci_atp(
#             hostname=HOSTNAME,
#             method=method,
#             bearer_token=bearer_token,
#             basic_auth=basic_auth,
#             body=body_payload,
#             query_params=query_params
#         )
#         print("Status code:", response.status_code)
#         # Pretty-print JSON if possible
#         try:
#             parsed = response.json()
#             # print("Response JSON:")
#             print(json.dumps(parsed, indent=2))
#         except ValueError:
#             print("Response text:")
#             print(response.text)

#     except Exception as e:
#         print("Error calling OCI ATP ORDS:", str(e))
#         exit(1)
