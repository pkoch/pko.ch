#!/bin/bash -e
vercel dns add pko.ch apr AAAA "$(curl ipv6.icanhazip.com)"
vercel dns add pko.ch apr A "$(curl ipv4.icanhazip.com)"
vercel dns add pko.ch '@' TXT 'forward-email-site-verification=2SXtiwXjmc'
vercel dns add pko.ch '@' MX 'mx2.forwardemail.net.' 10
vercel dns add pko.ch '@' MX 'mx1.forwardemail.net.' 10
vercel dns add pko.ch '@' TXT 'keybase-site-verification=RwmNVmbD0xzmAzJCUoRw-gusgJYDWsLo-y0jZRyX1NI'
