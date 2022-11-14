#!/bin/bash -e
if ! type vercel >/dev/null; then
    echo "Install vercel first: https://vercel.com/docs/cli" >&2
    exit 1
fi
vercel dns add pko.ch apr AAAA "$(curl ipv6.icanhazip.com)"
vercel dns add pko.ch apr A "$(curl ipv4.icanhazip.com)"
vercel dns add pko.ch '@' TXT 'forward-email-site-verification=2SXtiwXjmc'
vercel dns add pko.ch '@' MX 'mx2.forwardemail.net.' 10
vercel dns add pko.ch '@' MX 'mx1.forwardemail.net.' 10
vercel dns add pko.ch '@' TXT 'keybase-site-verification=RwmNVmbD0xzmAzJCUoRw-gusgJYDWsLo-y0jZRyX1NI'
vercel dns add pko.ch _ens TXT 'a=0xFbc53B2C5516e8d0765C9BC9711DbD27aab38F40'
