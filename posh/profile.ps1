﻿function connect($pshost) {
    $credential = Get-Credential
    $options = New-PSSessionOption -SkipCACheck -SkipCNCheck
    $session = New-PSSession -Credential $cred $pshost -UseSSL -SessionOption $options -Authentication Default

    Enter-PSSession $session
}


# SIG # Begin signature block
# MIIM8gYJKoZIhvcNAQcCoIIM4zCCDN8CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUoFH84/MT4/ti1/YrsFEPdam4
# 7UKgggonMIIExjCCA66gAwIBAgIQSHCA5QCreD9sNHHzrnj2njANBgkqhkiG9w0B
# AQsFADB/MQswCQYDVQQGEwJVUzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRp
# b24xHzAdBgNVBAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsxMDAuBgNVBAMTJ1N5
# bWFudGVjIENsYXNzIDMgU0hBMjU2IENvZGUgU2lnbmluZyBDQTAeFw0xNzA2MTIw
# MDAwMDBaFw0xOTA3MDkyMzU5NTlaMF4xCzAJBgNVBAYTAlVTMRAwDgYDVQQIDAdJ
# bmRpYW5hMRUwEwYDVQQHDAxtZXJyaWxsdmlsbGUxEjAQBgNVBAoMCURpcmVjdGJ1
# eTESMBAGA1UEAwwJRGlyZWN0YnV5MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB
# CgKCAQEApehwhW7NkmPyyWEMge9/jtnnDmGaj4IFIliVxm7SjgHHyrGT4A0CS1j+
# KoP3THqMdkBmsbROcuCth7edHn9sILsX67QiuRayn0ebzL72ltKAmCuM4mIbvpJd
# PHMw9etqHL870L4WgzeMjtBp2CY0stsa6YJs9jj/eShKgIZoYORgRCNLhHshQEMc
# 7X9iLxPGZzMB/UesKg1AvcSI90mPCLfaCaPUoSJ5wmK3FWJBtg085kypKUSi0iwB
# tcbeHaT8X8mxF6G7IzDKQcPd461b3oMSDCL4bpRDT46d2SUc3nymuOHSrC9XDFdH
# gfw2wS+uSLpoJVIWEhxQX2wi6ltvWQIDAQABo4IBXTCCAVkwCQYDVR0TBAIwADAO
# BgNVHQ8BAf8EBAMCB4AwKwYDVR0fBCQwIjAgoB6gHIYaaHR0cDovL3N2LnN5bWNi
# LmNvbS9zdi5jcmwwYQYDVR0gBFowWDBWBgZngQwBBAEwTDAjBggrBgEFBQcCARYX
# aHR0cHM6Ly9kLnN5bWNiLmNvbS9jcHMwJQYIKwYBBQUHAgIwGQwXaHR0cHM6Ly9k
# LnN5bWNiLmNvbS9ycGEwEwYDVR0lBAwwCgYIKwYBBQUHAwMwVwYIKwYBBQUHAQEE
# SzBJMB8GCCsGAQUFBzABhhNodHRwOi8vc3Yuc3ltY2QuY29tMCYGCCsGAQUFBzAC
# hhpodHRwOi8vc3Yuc3ltY2IuY29tL3N2LmNydDAfBgNVHSMEGDAWgBSWO1PweTOX
# r32D7y4rzMq3hh5yZjAdBgNVHQ4EFgQUsRk2ROSUiNHlfiviHyjMJ6+t+LkwDQYJ
# KoZIhvcNAQELBQADggEBAHjhoJSANQhrF5KB4AwVXe6lGxCb2UxMDgvAjlv9OPrm
# b0GMJZcKQmpuq2UlIk9WFJuh4dllZXXggprxG+cZ+0flcxWE1SqtYKDLtX3c2Z60
# Mop24nMVipBOSBZsXAnwwuuOKKl7DVBPhWIWPNawtn3bqBDVPP6MbtHFF3NnMVzj
# 0o8av0D/0b4KXwg0XS9YH/Rc3T8uZ5rmRFg5MFWG2J8UhvMsl63Wf0RggOADlbnx
# E7nUH3YpB7eijGX3fZLBjCAlpW10IF8ut8vvxcoKxgd9wHLzHnZVSqN8xbR1554W
# YREkF7v6bpsn4RhUBKIIRIS1x1n5w2pmJyDs9eFbNxAwggVZMIIEQaADAgECAhA9
# eNf5dklgsmF99PAeyoYqMA0GCSqGSIb3DQEBCwUAMIHKMQswCQYDVQQGEwJVUzEX
# MBUGA1UEChMOVmVyaVNpZ24sIEluYy4xHzAdBgNVBAsTFlZlcmlTaWduIFRydXN0
# IE5ldHdvcmsxOjA4BgNVBAsTMShjKSAyMDA2IFZlcmlTaWduLCBJbmMuIC0gRm9y
# IGF1dGhvcml6ZWQgdXNlIG9ubHkxRTBDBgNVBAMTPFZlcmlTaWduIENsYXNzIDMg
# UHVibGljIFByaW1hcnkgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgLSBHNTAeFw0x
# MzEyMTAwMDAwMDBaFw0yMzEyMDkyMzU5NTlaMH8xCzAJBgNVBAYTAlVTMR0wGwYD
# VQQKExRTeW1hbnRlYyBDb3Jwb3JhdGlvbjEfMB0GA1UECxMWU3ltYW50ZWMgVHJ1
# c3QgTmV0d29yazEwMC4GA1UEAxMnU3ltYW50ZWMgQ2xhc3MgMyBTSEEyNTYgQ29k
# ZSBTaWduaW5nIENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl4Me
# ABavLLHSCMTXaJNRYB5x9uJHtNtYTSNiarS/WhtR96MNGHdou9g2qy8hUNqe8+df
# J04LwpfICXCTqdpcDU6kDZGgtOwUzpFyVC7Oo9tE6VIbP0E8ykrkqsDoOatTzCHQ
# zM9/m+bCzFhqghXuPTbPHMWXBySO8Xu+MS09bty1mUKfS2GVXxxw7hd924vlYYl4
# x2gbrxF4GpiuxFVHU9mzMtahDkZAxZeSitFTp5lbhTVX0+qTYmEgCscwdyQRTWKD
# trp7aIIx7mXK3/nVjbI13Iwrb2pyXGCEnPIMlF7AVlIASMzT+KV93i/XE+Q4qITV
# RrgThsIbnepaON2b2wIDAQABo4IBgzCCAX8wLwYIKwYBBQUHAQEEIzAhMB8GCCsG
# AQUFBzABhhNodHRwOi8vczIuc3ltY2IuY29tMBIGA1UdEwEB/wQIMAYBAf8CAQAw
# bAYDVR0gBGUwYzBhBgtghkgBhvhFAQcXAzBSMCYGCCsGAQUFBwIBFhpodHRwOi8v
# d3d3LnN5bWF1dGguY29tL2NwczAoBggrBgEFBQcCAjAcGhpodHRwOi8vd3d3LnN5
# bWF1dGguY29tL3JwYTAwBgNVHR8EKTAnMCWgI6Ahhh9odHRwOi8vczEuc3ltY2Iu
# Y29tL3BjYTMtZzUuY3JsMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDAzAO
# BgNVHQ8BAf8EBAMCAQYwKQYDVR0RBCIwIKQeMBwxGjAYBgNVBAMTEVN5bWFudGVj
# UEtJLTEtNTY3MB0GA1UdDgQWBBSWO1PweTOXr32D7y4rzMq3hh5yZjAfBgNVHSME
# GDAWgBR/02Wnwt3su/AwCfNDOfoCrzMxMzANBgkqhkiG9w0BAQsFAAOCAQEAE4Ua
# HmmpN/egvaSvfh1hU/6djF4MpnUeeBcj3f3sGgNVOftxlcdlWqeOMNJEWmHbcG/a
# IQXCLnO6SfHRk/5dyc1eA+CJnj90Htf3OIup1s+7NS8zWKiSVtHITTuC5nmEFvwo
# sLFH8x2iPu6H2aZ/pFalP62ELinefLyoqqM9BAHqupOiDlAiKRdMh+Q6EV/WpCWJ
# mwVrL7TJAUwnewusGQUioGAVP9rJ+01Mj/tyZ3f9J5THujUOiEn+jf0or0oSvQ2z
# lwXeRAwV+jYrA9zBUAHxoRFdFOXivSdLVL4rhF4PpsN0BQrvl8OJIrEfd/O9zUPU
# 8UypP7WLhK9k8tAUITGCAjUwggIxAgEBMIGTMH8xCzAJBgNVBAYTAlVTMR0wGwYD
# VQQKExRTeW1hbnRlYyBDb3Jwb3JhdGlvbjEfMB0GA1UECxMWU3ltYW50ZWMgVHJ1
# c3QgTmV0d29yazEwMC4GA1UEAxMnU3ltYW50ZWMgQ2xhc3MgMyBTSEEyNTYgQ29k
# ZSBTaWduaW5nIENBAhBIcIDlAKt4P2w0cfOuePaeMAkGBSsOAwIaBQCgeDAYBgor
# BgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJAzEMBgorBgEEAYI3AgEE
# MBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMCMGCSqGSIb3DQEJBDEWBBSU
# ehVJHKRywgWM6zaoIRLREAmdAjANBgkqhkiG9w0BAQEFAASCAQBgovett/3ELdiF
# QSUm1ZgzFTNuYEUeo2xyuARI08m7KWs7bapnW8EAUjziyfsX1x9/ZZ/Nn9EY/3Hb
# 25i1ZPBP3zIBkIizN0Dr1VsImwj+2lPwLaP/FBzf27o2TISPOaCosSCbH735S9+/
# eR6QdbUTppGN5yGGsy0s6pObDNwAAFYHqoohoRB3BTHm5A52Uw8+hBMN9J0OAB3m
# N4SDB8MelBxCzvD+y9ZmHCJZw48iM8gx2JOLm9MlAVM5Le7khZHrvbu2or56URbZ
# PvE7oMsCs2YMKx6ZiZ3sLmIeaCRMu7CE6yJiefeosN9hPY+ggUD0a5Li7T2Z5CUP
# Y1B9ej30
# SIG # End signature block
