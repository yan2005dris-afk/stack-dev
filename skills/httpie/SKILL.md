---
name: httpie
description: >-
  Use HTTPie CLI (http/https) for testing, inspecting, and debugging REST APIs and HTTP endpoints.
  Activate when testing backend endpoints, executing smoke tests, sending JSON payloads,
  handling authentication sessions, or debugging HTTP responses.
---

# HTTPie CLI Skill

Guide and quick reference for testing REST APIs using HTTPie (`http` / `https`).

## Core Syntax

```bash
http [FLAGS] [METHOD] URL [ITEM [ITEM]]
```

- **Default method**: `GET` when no items are given; `POST` when request items (data fields) are provided.
- **Port shortcut**: `:3000/api/v1/...` expands automatically to `http://localhost:3000/api/v1/...`.

---

## Request Items Syntax

Item Type | Syntax | Example | Description
:--- | :--- | :--- | :---
**Data field (string)** | `key=value` | `email=admin@jasrapo.com` | Serialized as JSON string in body
**Data field (raw/typed)** | `key:=value` | `age:=30` `isActive:=true` `roles:='["admin"]'` | Parsed as JSON number, boolean, array, or object
**Query parameter** | `key==value` | `page==1` `limit==10` `tipoRuta==TOMA_LECTURA` | Appended to URL query string (`?page=1&limit=10`)
**HTTP Header** | `Header:Value` | `Authorization:'Bearer eyJ...'` | Custom header
**Form field** | `--form` + `key=value` | `--form file@./avatar.png` | `multipart/form-data` or `application/x-www-form-urlencoded`

---

## Common Recipes

### 1. Simple GET & Query Parameters
```bash
http GET :3000/api/v1/operator/routes tipoRuta==TOMA_LECTURA
```

### 2. POST with JSON Payload
```bash
http POST :3000/api/v1/auth/login email=admin@jasrapo.com password=supersecret
```

### 3. Authenticated Request with Bearer Token
```bash
http GET :3000/api/v1/operator/routes "Authorization: Bearer $TOKEN"
```

### 4. PATCH / PUT Requests
```bash
http PATCH :3000/api/v1/operator/routes/1/state estado=EN_PROGRESO
```

### 5. Persistent Sessions (Maintains cookies and headers across requests)
```bash
# Login and store session
http --session=admin POST :3000/api/v1/auth/login email=admin@jasrapo.com password=secret

# Subsequent requests automatically reuse session cookies / headers
http --session=admin GET :3000/api/v1/operator/routes
```

### 6. Scripting & Automation Flags
- `--check-status`: Exits with non-zero error code if HTTP status is 4xx or 5xx.
- `-b` / `--body`: Outputs only the response body (ideal for piping into tools).
- `-h` / `--headers`: Outputs only the response headers.
- `-v` / `--verbose`: Prints complete request and response exchange (useful for debugging).
- `-q` / `--quiet`: Suppresses terminal output completely.

```bash
# Smoke test assertion
http --check-status GET :3000/api/v1/health

# Extract token into variable
TOKEN=$(http --body POST :3000/api/v1/auth/login email=admin@jasrapo.com password=secret | jq -r '.accessToken')
```
