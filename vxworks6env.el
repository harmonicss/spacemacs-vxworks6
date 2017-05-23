;;
;; Setups up the paths for a vxWorks 6 installation. 
;;
;; requires code from vxworks.el
;;
;;

(if (eq vxworks-install-dir nil)
    (call-interactively 'get-vxworks-install-dir vxworks-install-dir))

(getenv "PATH")

(setenv "PATH"
        (concat
         vxworks-install-dir "components/ip_net2-6.9/host/x86-win32/bin;"
         vxworks-install-dir "vxworks-6.9/host/x86-win32/bin;"
         vxworks-install-dir "vxworks-6.9/vxtest/src/scripts;"
         vxworks-install-dir "vxworks-6.9/host/binutils/x86-win32/bin;"
         vxworks-install-dir "D:/WindRiver_vxw6.9.3/utilities-1.0/x86-win32/bin;"
         vxworks-install-dir "workbench-3.3/foundation/x86-win32/bin;"
         vxworks-install-dir "workbench-3.3/wrsysviewer/host/x86-win32/bin;"
         vxworks-install-dir "workbench-3.3/wrwb/platform/x86-win32/eclipse;"
         vxworks-install-dir "workbench-3.3/analysis/host/bin/x86-win32;"
         vxworks-install-dir "workbench-3.3/x86-win32/bin;"
         vxworks-install-dir "lmapi-5.0/x86-win32/bin;"
         vxworks-install-dir "gnu/4.3.3-vxworks-6.9/x86-win32/bin;"
         vxworks-install-dir "intel/20110124-vxworks-6.9/x86-win32/bin/ia32;"
         vxworks-install-dir "diab/5.9.1.0/WIN32/bin;"
         "C:/cygwin64/bin;"
         "C:/cygwin64/usr/local/bin;"))


(setenv "WIND_EXTENSIONS"
        (concat
         vxworks-install-dir "components/ip_net2-6.9/extensions;"
         vxworks-install-dir "components/extensions;"
         vxworks-install-dir "workbench-3.3/analysis/valgrind;"
         vxworks-install-dir "workbench-3.3/analysis/extensions;"
         vxworks-install-dir "workbench-3.3/wrsysviewer;"
         vxworks-install-dir "workbench-3.3/wrwb/pdt;"
         vxworks-install-dir "workbench-3.3/wrwb/intel;"
         vxworks-install-dir "workbench-3.3/wrwb/webtools;"
         vxworks-install-dir "workbench-3.3/wrwb/wre;"
         vxworks-install-dir "workbench-3.3/wrwb/vspworks;"
         vxworks-install-dir "workbench-3.3/wrwb/tools;"
         vxworks-install-dir "workbench-3.3/wrwb/wrlinux;"
         vxworks-install-dir "workbench-3.3/wrwb/wrhv;"
         vxworks-install-dir "workbench-3.3/wrwb/vthreads;"
         vxworks-install-dir "workbench-3.3/wrwb/vxworksmilshae;"
         vxworks-install-dir "workbench-3.3/wrwb/vxworksmils;"
         vxworks-install-dir "workbench-3.3/wrwb/vxworkscert;"
         vxworks-install-dir "workbench-3.3/wrwb/vxworks653;"
         vxworks-install-dir "workbench-3.3/wrwb/vxworks55;"
         vxworks-install-dir "workbench-3.3/wrwb/vxworks;"
         vxworks-install-dir "workbench-3.3/wrwb/wrworkbench;"
         vxworks-install-dir "wrmscomponents/diagnostics/extensions;"
         vxworks-install-dir "wrlinux-2.0/extensions;"
         vxworks-install-dir "unittester-2.5/extensions;"
         vxworks-install-dir "unittester-2.4/extensions;"
         vxworks-install-dir "studio-2.0/extensions;"
         vxworks-install-dir "components/windml-5.1/extensions;"
         vxworks-install-dir "components/windml-5.0/extensions;"
         vxworks-install-dir "components/windml-4.2/extensions;"
         vxworks-install-dir "components/windml-4.1/extensions;"
         vxworks-install-dir "components/webservices-1.5/extensions;"
         vxworks-install-dir "components/webservices-1.4/extensions;"
         vxworks-install-dir "components/webservices-1.3/extensions;"
         vxworks-install-dir "components/webcli-4.7/extensions;"
         vxworks-install-dir "components/opc-3.1/extensions;"
         vxworks-install-dir "components/dcom-2.3/extensions;"
         vxworks-install-dir "docs/extensions"))

(setenv "LD_LIBRARY_PATH"
        (concat
         vxworks-install-dir "vxworks-6.9/host/x86-win32/lib;"
         vxworks-install-dir "workbench-3.3/foundation/x86-win32/lib;"
         vxworks-install-dir "workbench-3.3/wrsysviewer/host/x86-win32/lib;"
         vxworks-install-dir "workbench-3.3/analysis/host/bin/x86-win32;"
         vxworks-install-dir "workbench-3.3/x86-win32/lib;"
         vxworks-install-dir "lmapi-5.0/x86-win32/lib;"
         vxworks-install-dir "intel/20110124-vxworks-6.9/x86-win32/bin/ia32"))

(setenv "WIND_SAMPLES"
        (concat
         vxworks-install-dir "components/ip_net2-6.9/samples;"
         vxworks-install-dir "vxworks-6.9/target/usr/apps/samples;"
         vxworks-install-dir "vxworks-6.9/target/src/demo;"
         vxworks-install-dir "workbench-3.3/analysis/target/src/linux;"
         vxworks-install-dir "workbench-3.3/analysis/target/src/vxworks;"
         vxworks-install-dir "workbench-3.3/samples"))


(setenv "WIND_VXCONFIG"
        (concat
         vxworks-install-dir "components/tcf_agent-0.3/osconfig/vxworks;"
         vxworks-install-dir "components/stacktrace-1.0/osconfig/vxworks;"
         vxworks-install-dir "components/ip_net2-6.9/osconfig/vxworks;"
         vxworks-install-dir "components/cafe-0.1/osconfig/vxworks"))

(setenv "WIND_COMPONENTS_INCLUDES"
        (concat
         vxworks-install-dir "components/tcf_agent-0.3/agent;"
         vxworks-install-dir "components/stacktrace-1.0/include;"
         vxworks-install-dir "components/cafe-0.1/hpc/include;"
         vxworks-install-dir "components/cafe-0.1/cafe/include;"
         vxworks-install-dir "components/cafe-0.1/vxworks/include"))

(setenv "COMP_IPNET2_SUBCOMP" "ip_net2-6.9/ipmcp/config;ip_net2-6.9/wrnad/config;ip_net2-6.9/vxifproxy/config;ip_net2-6.9/ipcavium/config;ip_net2-6.9/ipfreescale/config;ip_net2-6.9/iphwcrypto/config;ip_net2-6.9/ipipsec2/config;ip_net2-6.9/ipfirewall/config;ip_net2-6.9/ipmpls/config;ip_net2-6.9/ipmip6mn/config;ip_net2-6.9/ipmip6pm/config;ip_net2-6.9/ipmip6ha/config;ip_net2-6.9/ipmip6/config;ip_net2-6.9/ipmipfa/config;ip_net2-6.9/ipmippm/config;ip_net2-6.9/ipmipmn/config;ip_net2-6.9/ipmipha/config;ip_net2-6.9/ipmip4/config;ip_net2-6.9/ipmip/config;ip_net2-6.9/iptcp/config;ip_net2-6.9/ipike/config;ip_net2-6.9/ipradius/config;ip_net2-6.9/ipl2tp/config;ip_net2-6.9/ipppp/config;ip_net2-6.9/iplite2/config;ip_net2-6.9/vxcoreip/config;ip_net2-6.9/vxcompat/config;ip_net2-6.9/ipssl2/config;ip_net2-6.9/ipssh/config;ip_net2-6.9/ipcrypto/config;ip_net2-6.9/ipnet2/config;ip_net2-6.9/ipcom/config;ip_net2-6.9/vxbridge/config;ip_net2-6.9/iprohc/config;ip_net2-6.9/ipdhcpc6/config;ip_net2-6.9/ipdhcpr/config;ip_net2-6.9/ipripng/config;ip_net2-6.9/iprip/config;ip_net2-6.9/ipntp/config;ip_net2-6.9/ipsntp/config;ip_net2-6.9/ipappl/config;ip_net2-6.9/ipsctp/config;ip_net2-6.9/ipdhcps6/config;ip_net2-6.9/ipdhcps/config;ip_net2-6.9/ipdiameter/config;ip_net2-6.9/ipwlan/config;ip_net2-6.9/ipmacsec/config;ip_net2-6.9/ip8021x/config;ip_net2-6.9/vxdot1x/config;ip_net2-6.9/ipwps/config;ip_net2-6.9/ipeap/config")

(setenv "WIND_PREFERRED_PACKAGES" "vxworks-6.9")
(setenv "WIND_HOME" (concat vxworks-install-dir ""))
(setenv "WIND_BASE" (concat vxworks-install-dir "vxworks-6.9"))
(setenv "WIND_USR" (concat vxworks-install-dir "vxworks-6.9/target/usr"))
(setenv "DOCS_ROOT" (concat vxworks-install-dir "docs/extentions/eclipse/plugins"))
(setenv "WIND_DIAB_PATH" (concat vxworks-install-dir "diab/5.9.1.0"))
(setenv "WRSD_LICENSE_FILE" (concat vxworks-install-dir "license"))
(setenv "LM_A_APP_DISABLE_CACHE_READ" "set")
(setenv "WIND_TOOLCHAINS" "gnu;icc;diab")
(setenv "WIND_HOST_TYPE" "x86-win32")
(setenv "WIND_GNU_PATH" (concat vxworks-install-dir "gnu/4.3.3-vxworks-6.9"))
(setenv "WIND_ICC_PATH" (concat vxworks-install-dir "intel/20110124-vxworks-6.9"))
(setenv "IA32ROOT" (concat vxworks-install-dir "intel/20110124-vxworks-6.9"))
(setenv "WIND_DOCS" (concat vxworks-install-dir "docs"))
(setenv "WIND_TOOLS" (concat vxworks-install-dir "workbench-3.3"))
(setenv "WIND_DFW_PATH" (concat vxworks-install-dir "workbench-3.3/dfw/"))
(setenv "WIND_JRE_HOME" (concat vxworks-install-dir "jre/1.6.0_21/x86-win32"))
(setenv "WIND_WRWB_PATH" (concat vxworks-install-dir "workbench-3.3/wrwb/platform/x86-win32/eclipse"))
(setenv "WIND_WRSV_PATH" (concat vxworks-install-dir "workbench-3.3/wrsysviewer"))
(setenv "WIND_USERMODE_AGENT_PATH" (concat vxworks-install-dir "workbench-3.3/usermode-agent"))
(setenv "WIND_USERMODE_AGENT" (concat vxworks-install-dir "workbench-3.3/usermode-agent/bin/usermode-agent.sh"))
(setenv "WIND_SCOPETOOLS_BASE" (concat vxworks-install-dir "workbench-3.3/analysis"))
(setenv "WIND_INSTALLER_HOME" (concat vxworks-install-dir "maintenance/wrInstaller"))
(setenv "WIND_WB_SCRIPTS" (concat vxworks-install-dir "workbench-3.3/scripts/"))
(setenv "WIND_ANALYSIS_TARGET_SCRIPT_BASE" (concat vxworks-install-dir "workbench-3.3/analysis/target/scripts"))
(setenv "WIND_FOUNDATION_PATH" (concat vxworks-install-dir "workbench-3.3/foundation"))
(setenv "WIND_UTILITIES" (concat vxworks-install-dir "utilities-1.0"))
(setenv "MANPATH" (concat vxworks-install-dir "vxworks-6.9/man"))
(setenv "TCLLIBPATH" (concat vxworks-install-dir "vxworks-6.9/host/resource/tcl"))
(setenv "WIND_PLATFORM" "vxworks-6.9")
(setenv "WRVX_COMPBASE" (concat vxworks-install-dir "components"))
(setenv "WIND_COMPONENTS" (concat vxworks-install-dir "components"))
(setenv "WIND_COMPONENTS_LIBPATHS" (concat vxworks-install-dir "components/obj/vxworks-6.9/krnl/lib"))
(setenv "COMP_CAFE" "cafe-0.1")
(setenv "COMP_CAFE_PATH" (concat vxworks-install-dir "components/cafe-0.1"))
(setenv "WIND_COMPONENTS_LIBNAMES" "tcf_agent-0.3;stacktrace-1.0;ip_net2-6.9;cafe-0.1")
(setenv "COMP_IPNET2" "ip_net2-6.9")
(setenv "COMP_SUBCOMP_LIST" "COMP_IPNET2_SUBCOMP")
(setenv "COMP_STACKTRACE" "stacktrace-1.0")
(setenv "COMP_STACKTRACE_PATH" (concat vxworks-install-dir "components/stacktrace-1.0"))
(setenv "COMP_TCF_AGENT" "tcf_agent-0.3")
(setenv "COMP_TCF_AGENT_PATH" (concat vxworks-install-dir "components/tcf_agent-0.3"))
