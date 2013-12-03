google_chrome:
  pkg.installed:
    - name: google-chrome-stable
  pkgrepo.managed:
    - file: /etc/apt/sources.list.d/google-chrome.list
    - name: deb http://dl.google.com/linux/chrome/deb/ stable main
    - key: https://dl-ssl.google.com/linux/linux_signing_key.pub
    - require_in:
      - pkg: google_chrome
