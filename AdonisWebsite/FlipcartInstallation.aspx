﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlipcartInstallation.aspx.cs" Inherits="AdonisWebsite.FlipcartInstallation" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <style>
        /*
   general styles
*/
        .center-block-horiz {
            margin-left: auto !important;
            margin-right: auto !important;
        }

        .set-margin-cicis-menu-to-go {
            margin: 20px;
        }

        .set-padding-cicis-menu-to-go {
            padding: 20px;
        }

        .set-border-cicis-menu-to-go {
            border: 5px inset #4f4f4f;
        }

        set-box-shadow-cicis-menu-to-go {
            -webkit-box-shadow: 4px 4px 14px #4f4f4f;
            -moz-box-shadow: 4px 4px 14px #4f4f4f;
            box-shadow: 4px 4px 14px #4f4f4f;
        }

        /*
** Style the iframe
** =========================
*/
        /*
    css commmon to all iframes
*/
        .responsive-wrapper {
            position: relative;
            height: 0; /* gets height from padding-bottom */
            overflow: hidden;
            /* put following styles (necessary for overflow and 
     scrolling handling) inline in .embed-responsive-element-wrapper around iframe because not stable in CSS
    -webkit-overflow-scrolling: touch; 
                      overflow: auto; */
        }

            .responsive-wrapper img,
            .responsive-wrapper object,
            .responsive-wrapper iframe {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                border-style: none;
                padding: 0;
                margin: 0;
            }

        /*
    css particular to this iframe
*/

        #Iframe-Cicis-Menu-To-Go {
            max-width: 666.67px;
            max-height: 600px;
            overflow: hidden;
        }
        /*
   padding-bottom = h/w as %
*/
        .responsive-wrapper-padding-bottom-90pct {
            padding-bottom: 90%;
        }
    </style>
</head>
<body>
    <div id="Iframe-Cicis-Menu-To-Go" class="set-margin-cicis-menu-to-go set-padding-cicis-menu-to-go set-border-cicis-menu-to-go set-box-shadow-cicis-menu-to-go center-block-horiz">
        <div class="responsive-wrapper responsive-wrapper-padding-bottom-90pct" style="-webkit-overflow-scrolling: touch; overflow: auto;">
            <iframe src="/PDF/Standard Installation Scope of work-AC.pdf" type="application/pdf" width="100%" height="600" />
        </div>

        </div>
</body>
</html>