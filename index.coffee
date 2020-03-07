# @flow

urlComponentMatchers =
  m:
    pattern: /\.m\./
    replacement: '.'


cur_url = window.location.href

console.log "original url: #{cur_url}"

for name, {pattern, replacement} of urlComponentMatchers
  cur_url = cur_url.replace pattern, replacement
  console.log "new url: #{cur_url} (via '#{name}')"

if cur_url != window.location.href
  window.location.href = cur_url
