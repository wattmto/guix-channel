(define-module (milran packages networking)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix build-system go)
  #:use-module (gnu packages golang)
  #:use-module (milran packages golang)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages syncthing))

(define-public bettercap
  (package
    (name "bettercap")
    (version "2.32.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/bettercap/bettercap")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1pd6wrnzwxn6kpmni37c13w0jfwqsq1k0ai95dmxxzwlz9cgrl1q"))))
    (build-system go-build-system)
    (arguments
     '(#:import-path "github.com/bettercap/bettercap"))
    (propagated-inputs `(("go-golang-org-x-net" ,go-golang-org-x-net)
                         ("go-github-com-thoj-go-ircevent" ,go-github-com-thoj-go-ircevent)
                         ("go-github-com-tarm-serial" ,go-github-com-tarm-serial)
                         ("go-github-com-stratoberry-go-gpsd" ,go-github-com-stratoberry-go-gpsd)
                         ("go-github-com-robertkrimen-otto" ,go-github-com-robertkrimen-otto)
                         ("go-github-com-mitchellh-go-homedir" ,go-github-com-mitchellh-go-homedir)
                         ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
                         ("go-github-com-mdlayher-dhcp6" ,go-github-com-mdlayher-dhcp6)
                         ("go-github-com-malfunkt-iprange" ,go-github-com-malfunkt-iprange)
                         ("go-github-com-jpillora-go-tld" ,go-github-com-jpillora-go-tld)
                         ("go-github-com-koppacetic-go-gpsd" ,go-github-com-koppacetic-go-gpsd)
                         ("go-github-com-inconshreveable-go-vhost" ,go-github-com-inconshreveable-go-vhost)
                         ("go-github-com-hashicorp-mdns" ,go-github-com-hashicorp-mdns)
                         ("go-github-com-gorilla-websocket" ,go-github-com-gorilla-websocket)
                         ("go-github-com-gorilla-mux" ,go-github-com-gorilla-mux)
                         ("go-github-com-google-gousb" ,go-github-com-google-gousb)
                         ("go-github-com-google-gopacket" ,go-github-com-google-gopacket)
                         ("go-github-com-google-go-github" ,go-github-com-google-go-github)
                         ("go-github-com-gobwas-glob" ,go-github-com-gobwas-glob)
                         ("go-github-com-evilsocket-islazy" ,go-github-com-evilsocket-islazy)
                         ("go-github-com-elazarl-goproxy" ,go-github-com-elazarl-goproxy)
                         ("go-github-com-dustin-go-humanize" ,go-github-com-dustin-go-humanize)
                         ("go-github-com-chifflier-nfqueue-go" ,go-github-com-chifflier-nfqueue-go)
                         ("go-github-com-bettercap-recording" ,go-github-com-bettercap-recording)
                         ("go-github-com-bettercap-readline" ,go-github-com-bettercap-readline)
                         ("go-github-com-bettercap-nrf24" ,go-github-com-bettercap-nrf24)
                         ("go-github-com-bettercap-gatt" ,go-github-com-bettercap-gatt)
                         ("go-github-com-antchfx-jsonquery" ,go-github-com-antchfx-jsonquery)
                         ("go-github-com-adrianmo-go-nmea" ,go-github-com-adrianmo-go-nmea)
                         ("go-github-com-acarl005-stripansi" ,go-github-com-acarl005-stripansi)
                         ("pkg-config" ,pkg-config)
                         ("libpcap" ,libpcap)
                         ("libusb" ,libusb)
                         ("libnfnetlink" ,libnfnetlink)
                         ("libnetfilter-queue" ,libnetfilter-queue)))
    (home-page "https://github.com/bettercap/bettercap")
    (synopsis "Main Features")
    (description
     "bettercap is a powerful, easily extensible and portable framework written in Go
which aims to offer to security researchers, red teamers and reverse engineers
an @@strong{easy to use}, @@strong{all-in-one solution} with all the features
they might possibly need for performing reconnaissance and attacking
@@url{https://www.bettercap.org/modules/wifi/,WiFi} networks,
@@url{https://www.bettercap.org/modules/ble/,Bluetooth Low Energy} devices,
wireless @@url{https://www.bettercap.org/modules/hid/,HID} devices and
@@url{https://www.bettercap.org/modules/ethernet,Ethernet} networks.")
    (license license:gpl3)))
