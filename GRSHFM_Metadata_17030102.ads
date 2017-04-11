!FILE_FORMAT=ADS
!VERSION=1.0

!Section=Dimensions
'Name;DimensionClass;DefaultTopMember;DimensionAlias;ShortName;UseForCurrency;DimensionSize
Account;Account;#root;Account;;;
AuditDim;Generic;#root;AuditDim;C4;None;Medium
CostCenterDisc2;Generic;#root;CostCenterDisc2;C6;None;Medium
Currency;Currency;#root;Currency;;;
Entity;Entity;#root;Entity;;;
ICP;ICP;#root;ICP;;;
MktOvr;Generic;#root;MktOvr;C3;None;Medium
MovProd;Generic;#root;MovProd;C1;From;Large
CustType;Generic;#root;CustType;C7;None;Small
Period;Period;#root;Period;;;
RelPartDisc1;Generic;#root;RelPartDisc1;C5;None;Medium
Scenario;Scenario;#root;Scenario;;;
Value;Value;#root;Value;;;
VarLob;Generic;#root;VarLob;C2;To;Large
View;View;#root;View;;;
Year;Year;#root;Year;;;
SecurityClass;SecurityClass;#root;SecurityClass;;;
ConsolidationMethod;ConsolidationMethod;#root;ConsolidationMethod;;;
Alias;Alias;#root;Alias;;;

!Section=DimensionAssociations
'BaseDimension;Property;TargetDimension
Account;Alias;Alias
Account;SecurityClass;SecurityClass
Account;PlugAccount;Account
AuditDim;Alias;Alias
AuditDim;SecurityClass;SecurityClass
Account;CustomTopMemberAuditDim;AuditDim
CostCenterDisc2;Alias;Alias
CostCenterDisc2;SecurityClass;SecurityClass
Account;CustomTopMemberCostCenterDisc2;CostCenterDisc2
Currency;Alias;Alias
Entity;Alias;Alias
Entity;SecurityClass;SecurityClass
Entity;Currency;Currency
Entity;SecurityAsPartner;SecurityClass
Entity;HoldingCompany;Entity
ICP;Alias;Alias
ICP;SecurityClass;SecurityClass
Account;ICPTopMember;ICP
MktOvr;Alias;Alias
MktOvr;SecurityClass;SecurityClass
Account;CustomTopMemberMktOvr;MktOvr
MovProd;Alias;Alias
MovProd;SecurityClass;SecurityClass
Account;CustomTopMemberMovProd;MovProd
CustType;Alias;Alias
CustType;SecurityClass;SecurityClass
Account;CustomTopMemberCustType;CustType
Period;Alias;Alias
RelPartDisc1;Alias;Alias
RelPartDisc1;SecurityClass;SecurityClass
Account;CustomTopMemberRelPartDisc1;RelPartDisc1
Scenario;Alias;Alias
Scenario;SecurityClass;SecurityClass
Scenario;DefaultFrequency;View
Scenario;DefFreqForICTrans;View
Value;Alias;Alias
VarLob;Alias;Alias
VarLob;SecurityClass;SecurityClass
Account;CustomTopMemberVarLob;VarLob
View;Alias;Alias
Year;Alias;Alias
ConsolidationMethod;Alias;Alias

!Hierarchies=Entity
'Parent;Child;IsPrimary;Currency;AllowAdjs;AllowAdjFromChildren;HoldingCompany;SecurityAsPartner;IsICP;SecurityClass;UserDefined1;UserDefined2;UserDefined3;Alias=English
#root;[None];Y;;Y;Y;;;N;EN_NONE;;;;None
#root;VIP_ACTIVATOR;Y;USD;N;N;;;N;EN_ADMIN;;;;VIP Activator
#root;TOTAL_ENTITY;Y;USD;N;N;;;N;EN_TOTAL_ENTITY;;;;Total Consolidation Entity
TOTAL_ENTITY;JVITALIA_M;Y;USD;N;Y;;;N;EN_JVITALIA_M;HPL1;;;Total JV Italia
JVITALIA_M;JVITALIA_ADJ;Y;EUR;Y;Y;;;N;EN_JVITALIA_ADJ;HPL1;;;JV Italia Adjustment
JVITALIA_M;JVITALIA;Y;EUR;Y;Y;;;N;EN_JVITALIA;HPL1;;;JV Italia
TOTAL_ENTITY;JVITALIA_M_EUR;Y;EUR;N;Y;;;N;EN_JVITALIA_M_EUR;HPL1;;;Total JV Italia in EUR
JVITALIA_M_EUR;JVITALIA_ADJ;N;EUR;Y;Y;;;N;EN_JVITALIA_ADJ;HPL1;;;JV Italia Adjustment
JVITALIA_M_EUR;JVITALIA;N;EUR;Y;Y;;;N;EN_JVITALIA;HPL1;;;JV Italia
TOTAL_ENTITY;VIP_LEGAL_USD;Y;USD;N;Y;;;N;EN_VIP_LEGAL_USD;;;;VimpelCom Legal Main Consolidation
VIP_LEGAL_USD;VIPLTD_CON;Y;USD;N;Y;;;N;EN_VIPLTD_CON;;;;VimpelCom Ltd Consolidated
VIPLTD_CON;VIPHQ_ADJ;Y;USD;Y;Y;;;Y;EN_VIPHQ_ADJ;;;;VimpelCom HQ Adjustments
VIPLTD_CON;VIPLTD;Y;USD;Y;Y;;;Y;EN_VIPLTD;;;;VimpelCom Ltd
VIPLTD_CON;VIPAMS_CON;Y;USD;N;Y;;;N;EN_VIPADAM_CON;;;;VimpelCom Amsterdam BV
VIPAMS_CON;VIPAMS;Y;USD;Y;Y;;;Y;EN_VIPAMS;;;;VimpelCom Amsterdam BV
VIPAMS_CON;VIPAMSFIN;Y;USD;Y;Y;;;Y;EN_VIPAMSFIN;;;;VimpelCom Amsterdam Finance BV
VIPAMS_CON;GTLVIS_CON;Y;USD;Y;Y;;;N;EN_GTLVIS_CON;;;;Vimpelcom International Services BU Reporting
GTLVIS_CON;VIPINTSERV;Y;USD;Y;Y;;;Y;EN_VIPINTSERV;;;;VimpelCom International Services BV
GTLVIS_CON;GOLDENTELLTD;Y;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd
GTLVIS_CON;GTLVIS;Y;USD;Y;Y;;;Y;EN_GTLVIS;;;;GTL VIS Operations
VIPAMS_CON;VIPFBERM;Y;USD;Y;Y;;;Y;EN_VIPFBERM;;;;VimpelCom Finance Bermuda
VIPAMS_CON;VIPCYPHOLD;Y;USD;Y;Y;;;Y;EN_VIPCYPHOLD;;;;Vimpelcom Cyprus Holding
VIPAMS_CON;VIPCYPFIN;Y;USD;Y;Y;;;Y;EN_VIPCYPFIN;;;;Vimpelcom Cyprus Finance Ltd
VIPAMS_CON;VIPDIGI;Y;USD;Y;Y;;;Y;EN_VIPDIGI;;;;VIP Digital Ltd.
VIPAMS_CON;VCESOP_EUR;Y;EUR;Y;Y;;;Y;EN_VCESOP_EUR;;;;VC Esop N.V.
VIPAMS_CON;VCESOP_USD;Y;USD;Y;Y;;;Y;EN_VCESOP_USD;;;;VC Esop N.V. - USD
VIPAMS_CON;WIND_CON;Y;USD;N;Y;;;N;EN_WIND_CON;;;;Wind Telecom S.p.A. Consolidated
WIND_CON;WT;Y;EUR;Y;Y;;;Y;EN_WT;HPL1_HPL2;;;Wind Telecom S.p.A.
WIND_CON;WT_ADJ;Y;EUR;Y;Y;;;Y;EN_WT_ADJ;;;;Wind Telecom Group Adjustments Entity
WIND_CON;VTHBV;Y;EUR;Y;Y;;;Y;EN_VTHBV;;;;VTHBV - VimpelCom Telecom Holding BV
WIND_CON;WC_SARL_EUR_B;Y;EUR;Y;Y;;;Y;EN_WC_SARL_EUR_B;;;;Weather Capital S.a.r.l BRANCH
WIND_CON;WCSP_USD_B;Y;USD;Y;Y;;;Y;EN_WCSP_USD_B;;;;Weather Capital Special Purposes I SA in USD BRANCH
WIND_CON;KLAROLUX;Y;EUR;Y;Y;;;Y;EN_KLAROLUX;;;;KLAROLUX - Klarolux Investments Sarl
WIND_CON;WCSARL;Y;EUR;Y;Y;;;Y;EN_WCSARL;;;;WC_SARL - Weather Capital S.a.r.l
WIND_CON;WC_SARL_EUR;Y;EUR;Y;Y;;;Y;EN_WC_SARL_EUR;HPL1_HPL2;;;Weather Capital S.a.r.l
WIND_CON;WCSP;Y;EUR;Y;Y;;;Y;EN_WCSP;;;;WCSP - Weather Capital Special Purposes I SA
WIND_CON;WCSP_USD;Y;USD;Y;Y;;;Y;EN_WCSP_USD;HPL1_HPL2;;;Weather Capital Special Purposes I SA in USD
WIND_CON;OTSE_NEW;Y;EUR;Y;Y;;;Y;EN_OTSE_NEW;;;;Orascom Telecom Service Europe
WIND_CON;WINDACQHOLD_CON;Y;USD;N;Y;;;N;EN_WINDACQHOLD_CON;;;;Wind Acquisition Holdings Finance SpA Consolidated
WINDACQHOLD_CON;WINDACQHOLD;Y;EUR;Y;Y;;;Y;EN_WINDACQHOLD;HPL1_HPL2;;;Wind Acquisition Holdings Finance SpA
WINDACQHOLD_CON;WINDACQHOLD_ADJ;Y;EUR;Y;Y;;;Y;EN_WINDACQHOLD_ADJ;;;;Wind Acquisition Holdings Finance SpA Adjustments
WINDACQHOLD_CON;WINDACQHOLDFINII;Y;EUR;Y;Y;;;Y;EN_WINDACQHOLDFINII;;;;Wind Acquisition Holdings Finance II SA
WINDACQHOLD_CON;WINDACQHOLDFIN;Y;EUR;Y;Y;;;Y;EN_WINDACQHOLDFIN;;;;Wind Acquisition Holdings Finance SA
WINDACQHOLD_CON;WINDTELCO_CON;Y;USD;N;Y;;;N;EN_WINDTELCO_CON;;;;Wind Telecomunicazioni SpA Consolidated
WINDTELCO_CON;WIND_OPCO_ADJ_BUD;Y;EUR;Y;Y;;;Y;EN_WIND_OPCO_ADJ_BUD;;;;Wind Italy Operations Budget Adj
WINDTELCO_CON;WINDTELCO;Y;EUR;Y;Y;;;Y;EN_WINDTELCO;;;;Wind Telecomunicazioni SpA
WINDTELCO_CON;WINDTELCO_ADJ;Y;EUR;Y;Y;;;Y;EN_WINDTELCO_ADJ;HPL1_HPL2;;;Wind Telecomunicazioni SpA Adjustments
WINDTELCO_CON;WINDRETAIL;Y;EUR;Y;Y;;;Y;EN_WINDRETAIL;;;;Wind Retail SRL
WINDTELCO_CON;GALATA;Y;EUR;Y;Y;;;Y;EN_GALATA;;;;Galata
WINDTELCO_CON;WINDACQFINII;Y;EUR;Y;Y;;;Y;EN_WINDACQFINII;;;;Wind Acquisition Finance II S.A.
WINDTELCO_CON;WINDACQFIN;Y;EUR;Y;Y;;;Y;EN_WINDACQFIN;;;;Wind Acquisition Finance S.A.
WINDTELCO_CON;WINDFIN;Y;EUR;Y;Y;;;Y;EN_WINDFIN;;;;Wind Finance SL S.A.
WIND_CON;GTH_CON;Y;USD;N;Y;;;N;EN_GTH_CON;;;;Global Telecom Holding SAE Consolidated
GTH_CON;CAT;Y;DZD;Y;Y;;;Y;EN_CAT;;;;Consortium Algerien de Telecommunications S.p.A
GTH_CON;T_CSL;Y;USD;Y;Y;;;Y;EN_T_CSL;;;;Telecom CS Limited
GTH_CON;CORTEX_EG;Y;EGP;Y;Y;;;Y;EN_CORTEX_EG;;;;Cortex for Services and Consultations S.A.E.
GTH_CON;EURASIA;Y;USD;Y;Y;;;Y;EN_EURASIA;;;;Orascom Telecom Eurasia Ltd.
GTH_CON;FPPL;Y;USD;Y;Y;;;Y;EN_FPPL;;;;Financial Powers Plan Ltd.
GTH_CON;ITCL;Y;GBP;Y;Y;;;Y;EN_ITCL;;;;International Telecommunication Consortium Ltd.
GTH_CON;IWCPL_SA;Y;USD;Y;Y;;;Y;EN_IWCPL_SA;;;;International Wireless Communications Pakistan Limited
GTH_CON;MEDCABLE;Y;EUR;Y;Y;;;Y;EN_MEDCABLE;;;;Med Cable Ltd.
GTH_CON;MOGA;Y;USD;Y;Y;;;Y;EN_MOGA;;;;Moga Holding Ltd.
GTH_CON;IHL;Y;USD;Y;Y;;;Y;EN_IHL;;;;Iraq Holding Limited
GTH_CON;ORATEL;Y;USD;Y;Y;;;Y;EN_ORATEL;;;;Oratel International Inc.
GTH_CON;OTA;Y;DZD;Y;Y;;;Y;EN_OTA;;;;Orascom Telecom Algerie SPA
GTH_CON;OPTIMUM;Y;DZD;Y;Y;;;Y;EN_OPTIMUM;;;;Optimum Telecom Algeria SPA
GTH_CON;GTACQ;Y;EUR;Y;Y;;;Y;EN_GTACQ;;;;Global Telecom Acquisition
GTH_CON;MINIMAX;Y;USD;Y;Y;;;Y;EN_MINIMAX;;;;Minimax Ventures Limited
GTH_CON;OTESOP;Y;USD;Y;Y;;;Y;EN_OTESOP;;;;Orascom Telecom Esop Ltd.
GTH_CON;GTFSCA;Y;USD;Y;Y;;;Y;EN_GTFSCA;;;;Global Telecom Finance SCA
GTH_CON;GTH_M;Y;USD;N;Y;;;N;EN_GTH_M;HPL1_HPL2;;;Total Global Telecom Holding SAE
GTH_M;GTH;Y;EGP;Y;Y;;;Y;EN_GTH;HPL1_HPL2;;;Global Telecom Holding S.A.E.
GTH_M;GTH_USD;Y;USD;Y;Y;;;Y;EN_GTH_USD;;;;Global Telecom Holding S.A.E. USD
GTH_M;GTH_REC_USD;Y;USD;Y;Y;;;Y;EN_GTH_REC_USD;;;;Global Telecom Holding S.A.E. Reclass Adjustments USD
GTH_CON;GTH_M_Adj;Y;USD;N;Y;;;N;EN_GTH_M_ADJ;;;;Total Global Telecom Holding SAE Adjustments
GTH_M_Adj;GTH_ADJ;Y;EGP;Y;Y;;;Y;EN_GTH_ADJ;;;;Global Telecom Holding S.A.E. adjustments
GTH_M_Adj;GTH_USD_ADJ;Y;USD;Y;Y;;;Y;EN_GTH_USD_ADJ;;;;Global Telecom Holding S.A.E. adjustments USD
GTH_CON;OTH_MINV;Y;EGP;Y;Y;;;Y;EN_OTH_MINV;;;;Orascom Holding Handset Investment Company
GTH_CON;THCML;Y;CAD;Y;Y;;;Y;EN_THCML;;;;Telecom Holding Canada (Malta) Limited
GTH_CON;TICL;Y;USD;Y;Y;;;Y;EN_TICL;;;;Telecom Iraq Corp. Limited
GTH_CON;GTNBV;Y;EUR;Y;Y;;;Y;EN_GTNBV;;;;Global Telecom Netherlands BV
GTH_CON;GTNBVUSD;Y;USD;Y;Y;;;Y;EN_GTNBVUSD;;;;Global Telecom Netherlands BV USD
GTH_CON;GTHFBV;Y;USD;Y;Y;;;Y;EN_GTHFBV;;;;GTH Finance B.V.
GTH_CON;GTO;Y;EUR;Y;Y;;;Y;EN_GTO;;;;Global Telecom One Sarl
GTH_CON;GTSARL;Y;USD;Y;Y;;;Y;EN_GTSARL;;;;Global Telecom SARL
GTH_CON;TVL;Y;USD;Y;Y;;;Y;EN_TVL;;;;Telecom Ventures Limited
GTH_CON;SAWLTD;Y;USD;Y;Y;;;Y;EN_SAWLTD;;;;Sawyer Limited
GTH_CON;BDCL;Y;BDT;Y;Y;;;Y;EN_BDCL;;;;Banglalink Digital Communications Limited
GTH_CON;TELE_SA;Y;CHF;Y;Y;;;Y;EN_TELE_SA;;;;Telecel International Services SA
GTH_CON;TIL;Y;USD;Y;Y;;;Y;EN_TIL;;;;Telecel International Ltd
GTH_CON;TMGL;Y;USD;Y;Y;;;Y;EN_TMGL;;;;Telecom Management Group Limited
GTH_CON;GT_OSCAR;Y;USD;Y;Y;;;Y;EN_GT_OSCAR;;;;Global Telecom Oscar
GTH_CON;GLSARL;Y;USD;Y;Y;;;Y;EN_GLSARL;;;;Global Luxembourg S.a.r.l.
GTH_CON;GLFSCA;Y;USD;Y;Y;;;Y;EN_GLFSCA;;;;Global Luxembourg Finance S.C.A.
GTH_CON;WBANK;Y;PKR;Y;Y;;;Y;EN_WBANK;HPL1_HPL2;;;Waseela Microfinance Bank Limited
GTH_CON;GTHC_BV;Y;USD;Y;Y;;;Y;EN_GTHC_BV;;;;GTH Canada B.V.
GTH_CON;GTF_BC;Y;USD;Y;Y;;;Y;EN_GTF_BC;;;;GTH Global Telecom Finance (B.C.)
GTH_CON;GTH_C;Y;CAD;Y;Y;;;Y;EN_GTH_C;;;;GTH Global Telecom Holding (Canada) Limited
GTH_CON;TZIM;Y;USD;Y;Y;;;Y;EN_TZIM;;;;Telecel Zimbabwe
GTH_CON;DMSLTD;Y;USD;Y;Y;;;Y;EN_DMSLTD;;;;Database Management Services Ltd (Maltese Entity)
GTH_CON;PMCL_CON;Y;USD;N;Y;;;N;EN_PMCL_CON;;;;Pakistan Mobile Communications Ltd.
PMCL_CON;WARID;Y;PKR;Y;Y;;;Y;EN_WARID;HPL1_HPL2;;;Warid Telecom (Pvt) Ltd
PMCL_CON;BC;Y;PKR;Y;Y;;;Y;EN_BC;;;;Business & Communication Systems (Pvt) Ltd
PMCL_CON;LDNTEL_CON;Y;USD;N;Y;;;N;EN_LDNTEL_CON;;;;LinkDotNet Telecom Limited
LDNTEL_CON;LDNPAK;Y;PKR;Y;Y;;;Y;EN_LDNPAK;;;;LinkdoNet Pakistan (Private) Limited
LDNTEL_CON;LDNTEL;Y;PKR;Y;Y;;;Y;EN_LDNTEL;;;;LinkDotNet Telecom Limited
PMCL_CON;PMCL;Y;PKR;Y;Y;;;Y;EN_PMCL;;;;Pakistan Mobile Communications Limited
PMCL_CON;DEODAR;Y;PKR;Y;Y;;;Y;EN_DEODAR;;;;Deodar (Private) Limited
GTH_CON;RING_CON;Y;USD;N;Y;;;N;EN_RING_CON;;;;Ring Consolidated
RING_CON;MMMS;Y;EGP;Y;Y;;;Y;EN_MMMS;;;;Multi Media Mega Stores
RING_CON;RING_ALG;Y;DZD;Y;Y;;;Y;EN_RING_ALG;;;;Ring Algeria LLC
RING_CON;RING_BANG;Y;BDT;Y;Y;;;Y;EN_RING_BANG;;;;Ring Distribution (Private) Limited (Ring Bangladesh)
RING_CON;RING_DUBAI;Y;AED;Y;Y;;;Y;EN_RING_DUBAI;;;;The Phone Company FZO
RING_CON;RING_IRAQ;Y;USD;Y;Y;;;Y;EN_RING_IRAQ;;;;Ring Iraq
RING_CON;RING_PAK;Y;PKR;Y;Y;;;Y;EN_RING_PAK;;;;Ring Distribution (Private) Limited (Ring Pakistan)
RING_CON;RING_PAKS;Y;PKR;Y;Y;;;Y;EN_RING_PAKS;;;;CaRing (Private) Limited (Ring Pakistan Service)
RING_CON;RING_EG;Y;EGP;Y;Y;;;Y;EN_RING_EG;;;;Ring for Handset Service (CaRing)
RING_CON;RING_ALGS;Y;DZD;Y;Y;;;Y;EN_RING_ALGS;;;;Ring Maintenance - CARING LLC
RING_CON;RING_MAINT;Y;EGP;Y;Y;;;Y;EN_RING_MAINT;;;;Ring Distribution SAE
RING_CON;RING_RD;Y;TND;Y;Y;;;Y;EN_RING_RD;;;;R & D S.a.r.l.
RING_CON;RING_AEI;Y;USD;Y;Y;;;Y;EN_RING_AEI;;;;Advanced Electronic Industries
GTH_CON;TGLOBE_CON;Y;USD;N;Y;;;N;EN_TGLOBE_CON;;;;Telecel Consolidated
TGLOBE_CON;TCAR;Y;XAF;Y;Y;;;Y;EN_TCAR;;;;Telecel Centrafrique S.A.
TGLOBE_CON;TGLOBE;Y;USD;Y;Y;;;Y;EN_TGLOBE;;;;Telecel Globe Limited
TGLOBE_CON;TUCOM;Y;BIF;Y;Y;;;Y;EN_TUCOM;;;;U-Com Burundi S.A.
VIPAMS_CON;VIPHOLD_CON;Y;USD;N;Y;;;N;EN_VIPHOLD_CON;;;;VimpelCom Holdings BV Consolidated
VIPHOLD_CON;VIPHOLD;Y;USD;Y;Y;;;Y;EN_VIPHOLD;;;;VimpelCom Holdings BV
VIPHOLD_CON;VIPHOLDADJ;Y;USD;Y;Y;;;Y;EN_VIPHOLDADJ;;;;VimpelCom Holdings Adjustment
VIPHOLD_CON;VIPGSS_CON;Y;USD;N;Y;;;N;EN_VIPGSS_CON;;;;VimpelCom GSS B.V. (Consolidated)
VIPGSS_CON;VIPGSS;Y;USD;Y;Y;;;Y;EN_VIPGSS;;;;VimpelCom GSS B.V.
VIPGSS_CON;VIPGSSUKR;Y;UAH;Y;Y;;;Y;EN_VIPGSSUKR;;;;VimpelCom Global Services Ukraine LLC
VIPGSS_CON;VIPGSSPKR;Y;PKR;Y;Y;;;Y;EN_VIPGSSPKR;;;;VimpelCom Global Services Pakistan (Pvt.) Ltd
VIPHOLD_CON;VIPMICRO;Y;USD;Y;Y;;;Y;EN_VIPMICRO;;;;VimpelCom Micro Holdings BV
VIPHOLD_CON;TETA;Y;KZT;Y;Y;;;Y;EN_TETA;;;;TETA Telecom LLP
VIPHOLD_CON;TNSPLUS_TOT;Y;USD;Y;Y;;;N;EN_TNSPLUS_TOT;;;;TNS-Plus LLP Total
TNSPLUS_TOT;TNSPLUS;Y;KZT;Y;Y;;;Y;EN_TNSPLUS;;;;TNS-Plus LLP
TNSPLUS_TOT;TNSPLUS_Adj;Y;KZT;Y;Y;;;Y;EN_TNSPLUS_Adj;;;;TNS-Plus LLP Adjustments
VIPHOLD_CON;VIPGEORGIA;Y;USD;Y;Y;;;Y;EN_VIPGEORGIA;;;;VimpelCom Georgia Holdings BV
VIPHOLD_CON;INVESTICO;Y;USD;Y;Y;;;Y;EN_INVESTICO;;;;Investico Alliance Ltd
VIPHOLD_CON;VIPBVI;Y;USD;Y;Y;;;Y;EN_VIPBVI;;;;VimpelCom BVI AG
VIPHOLD_CON;TACOM_TOT;Y;USD;Y;Y;;;N;EN_TACOM_TOT;;;;TACOM LLC Total
TACOM_TOT;TACOM;Y;USD;Y;Y;;;Y;EN_TACOM;;;;TACOM LLC
TACOM_TOT;TACOM_Adj;Y;USD;Y;Y;;;Y;EN_TACOM_Adj;HPL2;;;TACOM LLC Adjustments
VIPHOLD_CON;KYIVSTAR;Y;UAH;Y;Y;;;Y;EN_KYIVSTAR;;;;Kyivstar
VIPHOLD_CON;GTLLC;Y;UAH;Y;Y;;;Y;EN_GTLLC;;;;GOLDEN TELECOM Limited Liability Company
VIPHOLD_CON;STARAVTO;Y;UAH;Y;Y;;;Y;EN_STARAVTO;;;;Kyivstar GSM Joint Stock Company Subsidiary "Staravto"
VIPHOLD_CON;STARMONEY;Y;UAH;Y;Y;;;Y;EN_STARMONEY;;;;Kyivstar GSM Joint Stock Company Subsidiary "Starmoney"
VIPHOLD_CON;VIPKYGHOLD;Y;USD;Y;Y;;;Y;EN_VIPKYGHOLD;;;;VimpelCom Kyrgyzstan Holding B.V.
VIPHOLD_CON;VIPKAZHOLD;Y;USD;Y;Y;;;Y;EN_VIPKAZHOLD;;;;VimpelCom Kazakhstan Holding B.V.
VIPHOLD_CON;VIPARMHOLD;Y;USD;Y;Y;;;Y;EN_VIPARMHOLD;;;;VimpelCom Armenia Holding B.V.
VIPHOLD_CON;SALFINSARL;Y;USD;Y;Y;;;Y;EN_SALFINSARL;;;;Salsa Finance S.a r.l.
VIPHOLD_CON;NTC;Y;RUB;Y;Y;;;Y;EN_NTC;;;;National Tower Company
VIPHOLD_CON;OJSC_CON;Y;USD;N;Y;;;N;EN_OJSC_CON;;;;OJSC Consolidation
OJSC_CON;OJSCADJ;Y;USD;Y;Y;;;Y;EN_OJSCADJ;;;;OJSC Vimpel adjustment
OJSC_CON;OJSCADJ_RUB;Y;RUB;Y;Y;;;Y;EN_OJSCADJ_RUB;;;;OJSC Vimpel adjustment RUB
OJSC_CON;VIPFBV;Y;USD;Y;Y;;;Y;EN_VIPFBV;;;;Vimpelcom Finance BV
OJSC_CON;VIPBV;Y;USD;Y;Y;;;Y;EN_VIPBV;;;;VimpelCom B.V.
OJSC_CON;VIPFIN;Y;USD;Y;Y;;;Y;EN_VIPFIN;;;;B.V. VimpelCom Finance S.a r.l.
OJSC_CON;VIPLAOSHOLD;Y;USD;Y;Y;;;Y;EN_VIPLAOSHOLD;;;;VimpelCom Holding Laos B.V.
OJSC_CON;VIPLAOS;Y;LAK;Y;Y;;;Y;EN_VIPLAOS;HPL1_HPL2;;;VimpelCom Lao Company Limited
OJSC_CON;GTHKH;Y;USD;Y;Y;;;Y;EN_GTHKH;;;;GTH CAMBODIA LTD
OJSC_CON;VIPKZHOLDAG;Y;USD;Y;Y;;;Y;EN_VIPKZHOLDAG;;;;VIP Kazakhstan Holding AG
OJSC_CON;VIPKGHOLDAG;Y;USD;Y;Y;;;Y;EN_VIPKGHOLDAG;;;;VIP Kyrgyzstan Holding AG
OJSC_CON;RUSSIA_CON;Y;USD;N;Y;;;N;EN_RUSSIA_CON;;;;Russia USD Consolidated
RUSSIA_CON;OJSCVIP;Y;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications
RUSSIA_CON;OJSCVIP_ICP;Y;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications - ICP
RUSSIA_CON;RUSSIA_HYP_ADJ;Y;RUB;Y;Y;;;N;EN_RUSSIA_HYP_ADJ;;;;Vimpelcom Russia Hyperion adjustments
RUSSIA_CON;RUSSIA_ADJ;Y;RUB;Y;Y;;;Y;EN_RUSSIA_ADJ;;;;Vimpelcom Russia adjustments
RUSSIA_CON;VIPFINLLC;Y;RUB;Y;Y;;;Y;EN_VIPFINLLC;;;;VimpelCom Finance LLC
RUSSIA_CON;VIPINV;Y;RUB;Y;Y;;;Y;EN_VIPINV;;;;VimpelCom Invest
RUSSIA_CON;BEELINE;Y;RUB;Y;Y;;;Y;EN_BEELINE;;;;Beeline Venchures
RUSSIA_CON;OOOCKN;Y;RUB;Y;Y;;;Y;EN_OOOCKN;;;;Investment Consultancy Agency Center of Commercial Real Estate
RUSSIA_CON;DICOM;Y;RUB;Y;Y;;;Y;EN_DICOM;;;;Dicom
RUSSIA_CON;ALKAR;Y;RUB;Y;Y;;;Y;EN_ALKAR;;;;Alkar
RUSSIA_CON;KOLANGON;Y;RUB;Y;Y;;;Y;EN_KOLANGON;;;;KOLANGON OPTIM
RUSSIA_CON;STM;Y;RUB;Y;Y;;;Y;EN_STM;;;;STM_Head_office
RUSSIA_CON;VCESOP;Y;RUB;Y;Y;;;Y;EN_VCESOP;;;;VC Esop N.V.
RUSSIA_CON;NOUSE;Y;RUB;Y;Y;;;Y;EN_NOUSE;;;;Nouse Ltd
RUSSIA_CON;NATSER;Y;RUB;Y;Y;;;Y;EN_NATSER;;;;Closed Joint Stock Company National Service Company""
RUSSIA_CON;PRUNESCOM;Y;RUB;Y;Y;;;Y;EN_PRUNESCOM;;;;Prunescom Ltd
RUSSIA_CON;ARARIMA;Y;RUB;Y;Y;;;Y;EN_ARARIMA;;;;Ararima Enterprises Ltd
RUSSIA_CON;SOVINTEL;Y;RUB;Y;Y;;;Y;EN_SOVINTEL;;;;Sovintel Group
RUSSIA_CON;ANTEL;Y;RUB;Y;Y;;;Y;EN_ANTEL;;;;AnTel Rascom Ltd
RUSSIA_CON;KUBTELE;Y;RUB;Y;Y;;;Y;EN_KUBTELE;;;;Kubtelecom LLC
RUSSIA_CON;KUBINTER;Y;RUB;Y;Y;;;Y;EN_KUBINTER;;;;Kubintersvyaz
RUSSIA_CON;SATILT;Y;RUB;Y;Y;;;Y;EN_SATILT;;;;Satiltsentr
RUSSIA_CON;SAKHALIN;Y;RUB;Y;Y;;;Y;EN_SAKHALIN;;;;Sakhalin Telekom Limited
RUSSIA_CON;FORTLAND;Y;RUB;Y;Y;;;Y;EN_FORTLAND;;;;Fortland Ltd
RUSSIA_CON;GOLDEN;Y;RUB;Y;Y;;;Y;EN_GOLDEN;;;;Golden TeLecom, Inc.
RUSSIA_CON;SFMTCIS;Y;RUB;Y;Y;;;Y;EN_SFMTCIS;;;;SFMT_CIS
RUSSIA_CON;BARDYM;Y;RUB;Y;Y;;;Y;EN_BARDYM;;;;Bardym Enterprises Ltd
RUSSIA_CON;GOLDENTELGRP;Y;RUB;Y;Y;;;Y;EN_GOLDENTELGRP;;;;Golden Telecom Group, Inc.
RUSSIA_CON;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd
RUSSIA_CON;GOLDENTELSRV;Y;RUB;Y;Y;;;Y;EN_GOLDENTELSRV;;;;Golden Teleservices, Inc.
RUSSIA_CON;GTSFIN;Y;RUB;Y;Y;;;Y;EN_GTSFIN;;;;GTS Finance, Inc.
RUSSIA_CON;GOLDHOLD;Y;RUB;Y;Y;;;Y;EN_GOLDHOLD;;;;Golden Holdings, Inc.
RUSSIA_CON;CITILINE;Y;RUB;Y;Y;;;Y;EN_CITILINE;;;;Citiline
RUSSIA_CON;AGAMA;Y;RUB;Y;Y;;;Y;EN_AGAMA;;;;Agama Ltd
RUSSIA_CON;RASCOM;Y;RUB;Y;Y;;;Y;EN_RASCOM;;;;Rascom
RUSSIA_CON;SFMTRUS;Y;RUB;Y;Y;;;Y;EN_SFMTRUS;;;;SFMT-Rusnet, Inc.
RUSSIA_CON;VESTBALT;Y;RUB;Y;Y;;;Y;EN_VESTBALT;;;;Vestbalt telekom (also CJSC WBT)
RUSSIA_CON;STHOLD;Y;RUB;Y;Y;;;Y;EN_STHOLD;;;;ST-Holding, s.r.o.
RUSSIA_CON;FIRMESS;Y;RUB;Y;Y;;;Y;EN_FIRMESS;;;;Firm Messenger
RUSSIA_CON;SAMARA;Y;RUB;Y;Y;;;Y;EN_SAMARA;;;;Samara Telecom
RUSSIA_CON;SMARTS_AST;Y;RUB;Y;Y;;;Y;EN_SMARTS_AST;;;;SMARTS-Astrakhan
RUSSIA_CON;SMARTS_SAR;Y;RUB;Y;Y;;;Y;EN_SMARTS_SAR;;;;SMARTS-Saratov
RUSSIA_CON;SMARTS_ELI;Y;RUB;Y;Y;;;Y;EN_SMARTS_ELI;;;;SMARTS-Elista
RUSSIA_CON;ERUS;Y;RUB;Y;Y;;;Y;EN_ERUS;;;;EURUS HOLDING B.V. 
RUSSIA_CON;SIM;Y;RUB;Y;Y;;;Y;EN_SIM;;;;LLC SIM TELECOM
RUSSIA_CON;NTC;N;RUB;Y;Y;;;Y;EN_NTC;;;;National Tower Company
OJSC_CON;UKR_LEG_CON;Y;USD;N;Y;;;N;EN_UKR_LEG_CON;;;;Ukrain Legal Consolidation
UKR_LEG_CON;GTSUKR;Y;UAH;Y;Y;;;Y;EN_GTSUKR;;;;GTS Ukrainian TeleSystems L.L.C.
UKR_LEG_CON;CELLUKR;Y;UAH;Y;Y;;;Y;EN_CELLUKR;;;;CellUkraine Ltd
UKR_LEG_CON;INVESTHOLD;Y;UAH;Y;Y;;;Y;EN_INVESTHOLD;;;;Invest-Holding Limited Liability Company
UKR_LEG_CON;GTLLC;N;UAH;Y;Y;;;Y;EN_GTLLC;;;;GOLDEN TELECOM Limited Liability Company
UKR_LEG_CON;WINTOP;Y;UAH;Y;Y;;;Y;EN_WINTOP;;;;Wintop Management Ltd
UKR_LEG_CON;CELLCROFTHOLD;Y;UAH;Y;Y;;;Y;EN_CELLCROFTHOLD;;;;Cellcroft Holdings Ltd
UKR_LEG_CON;CRADEL;Y;UAH;Y;Y;;;Y;EN_CRADEL;;;;Cradel Investments Ltd
UKR_LEG_CON;CRAYOLA;Y;UAH;Y;Y;;;Y;EN_CRAYOLA;;;;Crayola Properties Ltd
UKR_LEG_CON;CRISDENHOLD;Y;UAH;Y;Y;;;Y;EN_CRISDENHOLD;;;;Crisden Holdings Ltd
OJSC_CON;CIS_LEG_CON;Y;USD;N;Y;;;N;EN_CIS_LEG_CON;;;;CIS Legal Consolidation
CIS_LEG_CON;LIMNOTEX;Y;USD;Y;Y;;;Y;EN_LIMNOTEX;;;;Limnotex Developments Ltd.(Cyprus)
CIS_LEG_CON;FREEVALE;Y;USD;Y;Y;;;Y;EN_FREEVALE;;;;Freevale Enterprises Inc.
CIS_LEG_CON;CIS_ADJ;Y;USD;Y;Y;;;Y;EN_CIS_ADJ;;;;CIS Consolidation Adjustments
CIS_LEG_CON;CISWOKZ_LOC_Adj;Y;USD;Y;Y;;;Y;EN_CISWOKZ_LOC_Adj;HPL1;;;CIS without Kazakstan Local Adjustments
CIS_LEG_CON;Armen_Adj;Y;USD;Y;Y;;;Y;EN_Armen_Adj;HPL2;;;Armenia Adjustments
CIS_LEG_CON;Georg_Adj;Y;USD;Y;Y;;;Y;EN_Georg_Adj;HPL2;;;Georgia Adjustments
CIS_LEG_CON;Kyrgyz_Adj;Y;USD;Y;Y;;;Y;EN_Kyrgyz_Adj;HPL2;;;Kyrgyzstan Adjustments
CIS_LEG_CON;CISWOKZ_HQ;Y;USD;Y;Y;;;Y;EN_CISWOKZ_HQ;HPL1_HPL2;;;CIS without Kazakstan HQ
CIS_LEG_CON;KAZAKH_LEG_CON;Y;USD;N;Y;;;N;EN_KAZAKH_LEG_CON;;;;Kazakhstan Legal Consolidation
KAZAKH_LEG_CON;KARTEL;Y;KZT;Y;Y;;;Y;EN_KARTEL;;;;Kar-Tel
KAZAKH_LEG_CON;WENTHORP;Y;USD;Y;Y;;;Y;EN_WENTHORP;;;;Wenthorp Industries Ltd.
KAZAKH_LEG_CON;IRING;Y;USD;Y;Y;;;Y;EN_IRING;;;;Irington Developments Ltd.
KAZAKH_LEG_CON;TWODAY;Y;KZT;Y;Y;;;Y;EN_TWODAY;;;;2Day Telecom LLP
KAZAKH_LEG_CON;GTIKAZTEL;Y;USD;Y;Y;;;Y;EN_GTIKAZTEL;;;;GTI Kaztel Ltd
KAZAKH_LEG_CON;CLAFDOR;Y;USD;Y;Y;;;Y;EN_CLAFDOR;;;;Clafdor Investments Ltd
KAZAKH_LEG_CON;COMNIDORHOLD;Y;USD;Y;Y;;;Y;EN_COMNIDORHOLD;;;;Comnidor Holdings Ltd
KAZAKH_LEG_CON;KEM;Y;KZT;Y;Y;;;Y;EN_KEM;;;;Kazeuromobile LLP
CIS_LEG_CON;Uzbek_LEG_CON;Y;USD;N;Y;;;N;EN_Uzbek_LEG_CON;;;;Total Uzbekistan
Uzbek_LEG_CON;SILKWAY;Y;USD;Y;Y;;;Y;EN_SILKWAY;;;;Silkway Holding B.V.
Uzbek_LEG_CON;UNITEL;Y;USD;Y;Y;;;Y;EN_UNITEL;;;;Unitel LLC
Uzbek_LEG_CON;BUZTON;Y;USD;Y;Y;;;Y;EN_BUZTON;;;;Joint Venture Buzton Ltd Liability Company
Uzbek_LEG_CON;UNITEL_UZS;Y;UZS;Y;Y;;;Y;EN_UNITEL_UZS;;;;Unitel LLC - Som
Uzbek_LEG_CON;BUZTON_UZS;Y;UZS;Y;Y;;;Y;EN_BUZTON_UZS;;;;Joint Venture Buzton Ltd Liability Company - Som
CIS_LEG_CON;Armen_LEG_CON;Y;USD;N;Y;;;N;EN_Armen_LEG_CON;;;;Total Armenia
Armen_LEG_CON;ARMENTEL;Y;AMD;Y;Y;;;Y;EN_ARMENTEL;;;;Armenia Telephone Company
Armen_LEG_CON;ARMENCELL;Y;AMD;Y;Y;;;Y;EN_ARMENCELL;;;;Armencell CJSC
CIS_LEG_CON;Kyrgyz_LEG_CON;Y;USD;N;Y;;;N;EN_Kyrgyz_LEG_CON;;;;Total Kyrgyzstan
Kyrgyz_LEG_CON;MENACREST;Y;USD;Y;Y;;;Y;EN_MENACREST;;;;Menacrest Limited (Cyprus)
Kyrgyz_LEG_CON;SKYMOBILE;Y;KGS;Y;Y;;;Y;EN_SKYMOBILE;;;;Sky Mobile LLC
CIS_LEG_CON;Georg_LEG_CON;Y;USD;N;Y;;;N;EN_Georg_LEG_CON;;;;Total Georgia
Georg_LEG_CON;MOBITEL;Y;GEL;Y;Y;;;Y;EN_MOBITEL;;;;Mobitel LLC
Georg_LEG_CON;WATERTRAIL;Y;USD;Y;Y;;;Y;EN_WATERTRAIL;;;;Watertrail Industries Ltd.
TOTAL_ENTITY;VIP_LEGAL_USD_2;Y;USD;N;Y;;;N;EN_VIP_LEGAL_USD_2;;;;VimpelCom Legal Main Consolidation (new)
VIP_LEGAL_USD_2;VIPLTD_CON_2;Y;USD;N;Y;;;N;EN_VIPLTD_CON_2;;;;VimpelCom Ltd Consolidated (new)
VIPLTD_CON_2;VIPHQ_ADJ;N;USD;Y;Y;;;Y;EN_VIPHQ_ADJ;;;;VimpelCom HQ Adjustments
VIPLTD_CON_2;VIPLTD;N;USD;Y;Y;;;Y;EN_VIPLTD;;;;VimpelCom Ltd
VIPLTD_CON_2;VIPAMS_CON_2;Y;USD;N;Y;;;N;EN_VIPADAM_CON_2;;;;VimpelCom Amsterdam BV (new)
VIPAMS_CON_2;VIPAMS;N;USD;Y;Y;;;Y;EN_VIPAMS;;;;VimpelCom Amsterdam BV
VIPAMS_CON_2;VIPDIGITALAMS;Y;USD;Y;Y;;;Y;EN_VIPDIGITALAMS;;;;VIP Digital Amsterdam BV
VIPAMS_CON_2;VIPAMSFIN;N;USD;Y;Y;;;Y;EN_VIPAMSFIN;;;;VimpelCom Amsterdam Finance BV
VIPAMS_CON_2;GTLVIS_CON;N;USD;Y;Y;;;N;EN_GTLVIS_CON;;;;Vimpelcom International Services BU Reporting
VIPAMS_CON_2;VIPFBERM;N;USD;Y;Y;;;Y;EN_VIPFBERM;;;;VimpelCom Finance Bermuda
VIPAMS_CON_2;VIPCYPHOLD;N;USD;Y;Y;;;Y;EN_VIPCYPHOLD;;;;Vimpelcom Cyprus Holding
VIPAMS_CON_2;VIPCYPFIN;N;USD;Y;Y;;;Y;EN_VIPCYPFIN;;;;Vimpelcom Cyprus Finance Ltd
VIPAMS_CON_2;VIPDIGI;N;USD;Y;Y;;;Y;EN_VIPDIGI;;;;VIP Digital Ltd.
VIPAMS_CON_2;VCESOP_EUR;N;EUR;Y;Y;;;Y;EN_VCESOP_EUR;;;;VC Esop N.V.
VIPAMS_CON_2;VCESOP_USD;N;USD;Y;Y;;;Y;EN_VCESOP_USD;;;;VC Esop N.V. - USD
VIPAMS_CON_2;WIND_CON_2;Y;USD;N;Y;;;N;EN_WIND_CON_2;;;;Wind Telecom S.p.A. Consolidated (new)
WIND_CON_2;WT;N;EUR;Y;Y;;;Y;EN_WT;HPL1_HPL2;;;Wind Telecom S.p.A.
WIND_CON_2;WT_ADJ;N;EUR;Y;Y;;;Y;EN_WT_ADJ;;;;Wind Telecom Group Adjustments Entity
WIND_CON_2;KLAROLUX;N;EUR;Y;Y;;;Y;EN_KLAROLUX;;;;KLAROLUX - Klarolux Investments Sarl
WIND_CON_2;OTSE_NEW;N;EUR;Y;Y;;;Y;EN_OTSE_NEW;;;;Orascom Telecom Service Europe
WIND_CON_2;WINDACQHOLD_CON;N;USD;N;Y;;;N;EN_WINDACQHOLD_CON;;;;Wind Acquisition Holdings Finance SpA Consolidated
VIPAMS_CON_2;VIPHOLD_CON_2;Y;USD;N;Y;;;N;EN_VIPHOLD_CON;;;;VimpelCom Holdings BV Consolidated
VIPHOLD_CON_2;VIPHOLD;N;USD;Y;Y;;;Y;EN_VIPHOLD;;;;VimpelCom Holdings BV
VIPHOLD_CON_2;VIPLUXHOLDSARL;Y;EUR;Y;Y;;;Y;EN_VIPLUXHOLDSARL;;;;VimpelCom Luxembourg Holdings SARL
VIPHOLD_CON_2;VIPHOLDADJ;N;USD;Y;Y;;;Y;EN_VIPHOLDADJ;;;;VimpelCom Holdings Adjustment
VIPHOLD_CON_2;VIPGSS_CON;N;USD;N;Y;;;N;EN_VIPGSS_CON;;;;VimpelCom GSS B.V. (Consolidated)
VIPHOLD_CON_2;WT_CON_2 ;Y;USD;N;Y;;;N;EN_WIND_CON_2;;;;Wind Telecom S.p.A. Consolidated (new)
WT_CON_2 ;WT;N;EUR;Y;Y;;;Y;EN_WT;HPL1_HPL2;;;Wind Telecom S.p.A.
WT_CON_2 ;WT_ADJ;N;EUR;Y;Y;;;Y;EN_WT_ADJ;;;;Wind Telecom Group Adjustments Entity
WT_CON_2 ;KLAROLUX;N;EUR;Y;Y;;;Y;EN_KLAROLUX;;;;KLAROLUX - Klarolux Investments Sarl
VIPHOLD_CON_2;VIPMICRO;N;USD;Y;Y;;;Y;EN_VIPMICRO;;;;VimpelCom Micro Holdings BV
VIPHOLD_CON_2;TETA;N;KZT;Y;Y;;;Y;EN_TETA;;;;TETA Telecom LLP
VIPHOLD_CON_2;TNSPLUS_TOT;N;USD;Y;Y;;;N;EN_TNSPLUS_TOT;;;;TNS-Plus LLP Total
VIPHOLD_CON_2;VIPGEORGIA;N;USD;Y;Y;;;Y;EN_VIPGEORGIA;;;;VimpelCom Georgia Holdings BV
VIPHOLD_CON_2;INVESTICO;N;USD;Y;Y;;;Y;EN_INVESTICO;;;;Investico Alliance Ltd
VIPHOLD_CON_2;VIPBVI;N;USD;Y;Y;;;Y;EN_VIPBVI;;;;VimpelCom BVI AG
VIPHOLD_CON_2;TACOM_TOT;N;USD;Y;Y;;;N;EN_TACOM_TOT;;;;TACOM LLC Total
VIPHOLD_CON_2;KYIVSTAR;N;UAH;Y;Y;;;Y;EN_KYIVSTAR;;;;Kyivstar
VIPHOLD_CON_2;GTLLC;N;UAH;Y;Y;;;Y;EN_GTLLC;;;;GOLDEN TELECOM Limited Liability Company
VIPHOLD_CON_2;STARAVTO;N;UAH;Y;Y;;;Y;EN_STARAVTO;;;;Kyivstar GSM Joint Stock Company Subsidiary "Staravto"
VIPHOLD_CON_2;STARMONEY;N;UAH;Y;Y;;;Y;EN_STARMONEY;;;;Kyivstar GSM Joint Stock Company Subsidiary "Starmoney"
VIPHOLD_CON_2;VIPKYGHOLD;N;USD;Y;Y;;;Y;EN_VIPKYGHOLD;;;;VimpelCom Kyrgyzstan Holding B.V.
VIPHOLD_CON_2;VIPKAZHOLD;N;USD;Y;Y;;;Y;EN_VIPKAZHOLD;;;;VimpelCom Kazakhstan Holding B.V.
VIPHOLD_CON_2;VIPARMHOLD;N;USD;Y;Y;;;Y;EN_VIPARMHOLD;;;;VimpelCom Armenia Holding B.V.
VIPHOLD_CON_2;SALFINSARL;N;USD;Y;Y;;;Y;EN_SALFINSARL;;;;Salsa Finance S.a r.l.
VIPHOLD_CON_2;NTC;N;RUB;Y;Y;;;Y;EN_NTC;;;;National Tower Company
VIPHOLD_CON_2;OJSC_CON;N;USD;N;Y;;;N;EN_OJSC_CON;;;;OJSC Consolidation
VIPHOLD_CON_2;WEATHER_CON;Y;USD;N;Y;;;N;EN_WEATHER_CON;;;;Weather Capital Consolidated (new)
WEATHER_CON;VTHBV;N;EUR;Y;Y;;;Y;EN_VTHBV;;;;VTHBV - VimpelCom Telecom Holding BV
WEATHER_CON;WC_SARL_EUR_B;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR_B;;;;Weather Capital S.a.r.l BRANCH
WEATHER_CON;WCSP_USD_B;N;USD;Y;Y;;;Y;EN_WCSP_USD_B;;;;Weather Capital Special Purposes I SA in USD BRANCH
WEATHER_CON;WCSARL;N;EUR;Y;Y;;;Y;EN_WCSARL;;;;WC_SARL - Weather Capital S.a.r.l
WEATHER_CON;WC_SARL_EUR;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR;HPL1_HPL2;;;Weather Capital S.a.r.l
WEATHER_CON;WCSP;N;EUR;Y;Y;;;Y;EN_WCSP;;;;WCSP - Weather Capital Special Purposes I SA
WEATHER_CON;WCSP_USD;N;USD;Y;Y;;;Y;EN_WCSP_USD;HPL1_HPL2;;;Weather Capital Special Purposes I SA in USD
WEATHER_CON;GTH_CON;N;USD;N;Y;;;N;EN_GTH_CON;;;;Global Telecom Holding SAE Consolidated
TOTAL_ENTITY;VIP_LEGAL_USD_3;Y;USD;N;Y;;;N;EN_VIP_LEGAL_USD_3;;;;VimpelCom Legal Main Consolidation (new)
VIP_LEGAL_USD_3;VIPLTD_CON_P;Y;USD;N;Y;;;N;EN_VIPLTD_CON_P;;;;VimpelCom Ltd Consolidated (new)
VIPLTD_CON_P;VIPHQ_ADJ;N;USD;Y;Y;;;Y;EN_VIPHQ_ADJ;;;;VimpelCom HQ Adjustments - 163
VIPLTD_CON_P;VIPLTD;N;USD;Y;Y;;;Y;EN_VIPLTD;;;;VimpelCom Ltd - 172
VIPLTD_CON_P;VIPAMS_CON_P;Y;USD;N;Y;;;N;EN_VIPAMS_CON_P;;;;VimpelCom Amsterdam BV Consolidated
VIPAMS_CON_P;VIPAMS;N;USD;Y;Y;;;Y;EN_VIPAMS;;;;PJSC Vimpelcom Communications - 149
VIPAMS_CON_P;VIPDIGITALAMS;N;USD;Y;Y;;;Y;EN_VIPDIGITALAMS;;;;VIP Digital Amsterdam BV
VIPAMS_CON_P;VIPAMSFIN;N;USD;Y;Y;;;Y;EN_VIPAMSFIN;;;;PJSC Vimpelcom Communications - 150
VIPAMS_CON_P;VIPFBERM;N;USD;Y;Y;;;Y;EN_VIPFBERM;;;;VimpelCom Finance Bermuda
VIPAMS_CON_P;VIPINTSERV_CON_P;Y;USD;N;Y;;;N;EN_VIPINTSERV_CON_P;;;;VimpelCom International Services BV Consolidated
VIPINTSERV_CON_P;VIPINTSERV;N;USD;Y;Y;;;Y;EN_VIPINTSERV;;;;VimpelCom International Services BV - 164
VIPINTSERV_CON_P;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd - 037
VIPAMS_CON_P;VIPDIGI;N;USD;Y;Y;;;Y;EN_VIPDIGI;;;;VIP Digital Ltd.
VIPAMS_CON_P;VCESOP_EUR;N;EUR;Y;Y;;;Y;EN_VCESOP_EUR;;;;VC Esop N.V.
VIPAMS_CON_P;VCESOP_USD;N;USD;Y;Y;;;Y;EN_VCESOP_USD;;;;VC Esop N.V. - USD
VIPAMS_CON_P;VIPCYPHOLD_CON_P;Y;USD;N;Y;;;N;EN_VIPCYPHOLD_CON_P;;;;Vimpelcom Cyprus Holding Consolidated
VIPCYPHOLD_CON_P;VIPCYPHOLD;N;USD;Y;Y;;;Y;EN_VIPCYPHOLD;;;;Vimpelcom Cyprus Holding - 155
VIPCYPHOLD_CON_P;VIPCYPFIN;N;USD;Y;Y;;;Y;EN_VIPCYPFIN;;;;Vimpelcom Cyprus Finance Ltd - 154
VIPAMS_CON_P;VIPHOLD_CON_P;Y;USD;N;Y;;;N;EN_VIPHOLD_CON_P;;;;VimpelCom Holdings BV Consolidated
VIPHOLD_CON_P;NTC;N;RUB;Y;Y;;;Y;EN_NTC;;;;National Tower Company
VIPHOLD_CON_P;WT_CON_P;Y;USD;N;Y;;;N;EN_WIND_CON_P;;;;Wind Telecom S.p.A. Consolidated
WT_CON_P;WT;N;EUR;Y;Y;;;Y;EN_WT;HPL1_HPL2;;;Wind Telecom S.p.A. - 198
WT_CON_P;WT_ADJ;N;EUR;Y;Y;;;Y;EN_WT_ADJ;;;;Wind Telecom Group Adjustments Entity - 199
WT_CON_P;KLAROLUX;N;EUR;Y;Y;;;Y;EN_KLAROLUX;;;;KLAROLUX - Klarolux Investments Sarl - 070
VIPHOLD_CON_P;VIPHOLDADJ;N;USD;Y;Y;;;Y;EN_VIPHOLDADJ;;;;VimpelCom Holdings BV Adjustments  - 162
VIPHOLD_CON_P;VIPHOLD;N;USD;Y;Y;;;Y;EN_VIPHOLD;;;;VimpelCom Holdings BV - 161
VIPHOLD_CON_P;VIPGSS_CON_P;Y;USD;N;Y;;;N;EN_VIPGSS_CON_P;;;;VimpelCom GSS BV Consolidated
VIPGSS_CON_P;VIPGSS;N;USD;Y;Y;;;Y;EN_VIPGSS;;;;VimpelCom GSS B.V.
VIPGSS_CON_P;VIPGSSUKR;N;UAH;Y;Y;;;Y;EN_VIPGSSUKR;;;;VimpelCom Global Services Ukraine LLC
VIPGSS_CON_P;VIPGSSPKR;N;PKR;Y;Y;;;Y;EN_VIPGSSPKR;;;;VimpelCom Global Services Pakistan (Pvt.) Ltd
VIPHOLD_CON_P;OJSC_VIP_COM_CON_P;Y;USD;N;Y;;;N;EN_OJSC_VIP_COM_CON_P;;;;PJSC Vimpelcom Communications Consolidated
OJSC_VIP_COM_CON_P;OJSCVIP;N;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;PJSC Vimpel-Communications - 088
OJSC_VIP_COM_CON_P;VIPINV;N;RUB;Y;Y;;;Y;EN_VIPINV;;;;VimpelCom Invest - 165
OJSC_VIP_COM_CON_P;VIPFINLLC;N;RUB;Y;Y;;;Y;EN_VIPFINLLC;;;;VimpelCom Finance LLC - 159
OJSC_VIP_COM_CON_P;GTHKH;N;USD;Y;Y;;;Y;EN_GTHKH;;;;GTH CAMBODIA LTD - 052
OJSC_VIP_COM_CON_P;NOUSE_CON_P;Y;USD;N;Y;;;N;EN_NOUSE_CON_P;;;;Nouse Ltd Consolidated 
NOUSE_CON_P;NOUSE;N;RUB;Y;Y;;;Y;EN_NOUSE;;;;Nouse Ltd - 085
NOUSE_CON_P;NATSER;N;RUB;Y;Y;;;Y;EN_NATSER;;;;Closed Joint Stock Company National Service Company - 084
OJSC_VIP_COM_CON_P;ARARIMA;N;RUB;Y;Y;;;Y;EN_ARARIMA;;;;Ararima Enterprises Ltd - 004
OJSC_VIP_COM_CON_P;ARMENTEL_CON_P;Y;USD;N;Y;;;N;EN_ARMENTEL_CON_P;;;;Armenia Telephone Company Consolidated
ARMENTEL_CON_P;ARMENTEL;N;AMD;Y;Y;;;Y;EN_ARMENTEL;;;;Armenia Telephone Company - 006
ARMENTEL_CON_P;ARMENCELL;N;AMD;Y;Y;;;Y;EN_ARMENCELL;;;;Armencell CJSC - 005
OJSC_VIP_COM_CON_P;VESTBALT;N;RUB;Y;Y;;;Y;EN_VESTBALT;;;;Vestbalt telekom (also CJSC WBT) - 148
OJSC_VIP_COM_CON_P;VIPFIN_CON_P;Y;USD;N;Y;;;N;EN_VIPFIN_CON_P;;;;B.V. VimpelCom Finance S.a r.l. Consolidated
VIPFIN_CON_P;VIPFIN;N;USD;Y;Y;;;Y;EN_VIPFIN;;;;B.V. VimpelCom Finance S.a r.l. - 158
VIPFIN_CON_P;LIMNOTEX_CON_P;Y;USD;N;Y;;;N;EN_LIMNOTEX_CON_P;;;;Limnotex Developments Ltd.(Cyprus) Consolidated
LIMNOTEX_CON_P;LIMNOTEX;N;USD;Y;Y;;;Y;EN_LIMNOTEX;;;;Limnotex Developments Ltd.(Cyprus) - 077
LIMNOTEX_CON_P;IRING;N;USD;Y;Y;;;Y;EN_IRING;;;;Irington Developments Ltd. - 065
LIMNOTEX_CON_P;WENTHORP;N;USD;Y;Y;;;Y;EN_WENTHORP;;;;Wenthorp Industries Ltd. - 185
VIPFIN_CON_P;VCESOP;N;RUB;Y;Y;;;Y;EN_VCESOP;;;;VC Esop N.V. - 147
VIPFIN_CON_P;VIPBV;N;USD;Y;Y;;;Y;EN_VIPBV;;;;VimpelCom B.V. - 152
VIPFIN_CON_P;VIPLAOSHOLD_CON_P;Y;USD;N;Y;;;N;EN_VIPLAOSHOLD_CON_P;;;;VimpelCom Holding Laos B.V. Consolidated
VIPLAOSHOLD_CON_P;VIPLAOSHOLD;N;USD;Y;Y;;;Y;EN_VIPLAOSHOLD;;;;VimpelCom Holding Laos B.V. - 171
VIPLAOSHOLD_CON_P;VIPLAOS;N;LAK;Y;Y;;;Y;EN_VIPLAOS;HPL1_HPL2;;;VimpelCom Lao Company Limited - 170
VIPFIN_CON_P;VIPKAZHOLD_CON_P;Y;USD;N;Y;;;N;EN_VIPKAZHOLD_CON_P;;;;VimpelCom Kazakhstan Holding B.V. Consolidated
VIPKAZHOLD_CON_P;VIPKAZHOLD;N;USD;Y;Y;;;Y;EN_VIPKAZHOLD;;;;VimpelCom Kazakhstan Holding B.V. - 166
VIPKAZHOLD_CON_P;VIPKZHOLDAG;N;USD;Y;Y;;;Y;EN_VIPKZHOLDAG;;;;VIP Kazakhstan Holding AG - 169
VIPKAZHOLD_CON_P;KARTEL_CON_P;Y;USD;N;Y;;;N;EN_KARTEL_CON_P;;;;Kar-Tel Consolidated
KARTEL_CON_P;KARTEL;N;KZT;Y;Y;;;Y;EN_KARTEL;;;;Kar-Tel - 068
KARTEL_CON_P;KEM;N;KZT;Y;Y;;;Y;EN_KEM;;;;Kazeuromobile LLP - 069
KARTEL_CON_P;TWODAY;N;KZT;Y;Y;;;Y;EN_TWODAY;;;;2Day Telecom LLP
VIPFIN_CON_P;VIPKYGHOLD_CON_P;Y;USD;N;Y;;;N;EN_VIPKYGHOLD_CON_P;;;;VimpelCom Kyrgyzstan Holding B.V. Consolidated
VIPKYGHOLD_CON_P;VIPKYGHOLD;N;USD;Y;Y;;;Y;EN_VIPKYGHOLD;;;;VimpelCom Kyrgyzstan Holding B.V. - 168
VIPKYGHOLD_CON_P;VIPKGHOLDAG;N;USD;Y;Y;;;Y;EN_VIPKGHOLDAG;;;;VIP Kyrgyzstan Holding AG  - 167
VIPKYGHOLD_CON_P;MENACREST_CON_P;Y;USD;N;Y;;;N;EN_MENACREST_CON_P;;;;Menacrest Limited (Cyprus) Consolidated
MENACREST_CON_P;MENACREST;N;USD;Y;Y;;;Y;EN_MENACREST;;;;Menacrest Limited (Cyprus) - 079
MENACREST_CON_P;SKYMOBILE;N;KGS;Y;Y;;;Y;EN_SKYMOBILE;;;;Sky Mobile LLC - 121
OJSC_VIP_COM_CON_P;BEELINE;N;RUB;Y;Y;;;Y;EN_BEELINE;;;;Beeline Venchures - 010
OJSC_VIP_COM_CON_P;WATERTRAIL_CON_P;Y;USD;N;Y;;;N;EN_WATERTRAIL_CON_P;;;;Watertrail Industries Ltd. Consolidated
WATERTRAIL_CON_P;WATERTRAIL;N;USD;Y;Y;;;Y;EN_WATERTRAIL;;;;Watertrail Industries Ltd. - 176
WATERTRAIL_CON_P;MOBITEL;N;GEL;Y;Y;;;Y;EN_MOBITEL;;;;Mobitel LLC - 082
OJSC_VIP_COM_CON_P;SMARTS_AST;N;RUB;Y;Y;;;Y;EN_SMARTS_AST;;;;SMARTS-Astrakhan - 122
OJSC_VIP_COM_CON_P;SMARTS_SAR;N;RUB;Y;Y;;;Y;EN_SMARTS_SAR;;;;SMARTS-Saratov - 124
OJSC_VIP_COM_CON_P;SMARTS_ELI;N;RUB;Y;Y;;;Y;EN_SMARTS_ELI;;;;SMARTS-Elista - 123
OJSC_VIP_COM_CON_P;DICOM;N;RUB;Y;Y;;;Y;EN_DICOM;;;;Dicom - 025
OJSC_VIP_COM_CON_P;FREEVALE_CON_P;Y;USD;N;Y;;;N;EN_FREEVALE_CON_P;;;;Freevale Enterprises Inc. Consolidated
FREEVALE_CON_P;FREEVALE;N;USD;Y;Y;;;Y;EN_FREEVALE;;;;Freevale Enterprises Inc. - 031
FREEVALE_CON_P;UNITEL;N;USD;Y;Y;;;Y;EN_UNITEL;;;;Unitel LLC - 145
FREEVALE_CON_P;UNITEL_UZS;N;UZS;Y;Y;;;Y;EN_UNITEL_UZS;;;;Unitel LLC - 146
OJSC_VIP_COM_CON_P;SILKWAY_CON_P;Y;USD;N;Y;;;N;EN_SILKWAY_CON_P;;;;Silkway Holding B.V. Consolidated
SILKWAY_CON_P;SILKWAY;N;USD;Y;Y;;;Y;EN_SILKWAY;;;;Silkway Holding B.V. - 120
SILKWAY_CON_P;UNITEL;N;USD;Y;Y;;;Y;EN_UNITEL;;;;Unitel LLC - 145
SILKWAY_CON_P;UNITEL_UZS;N;UZS;Y;Y;;;Y;EN_UNITEL_UZS;;;;Unitel LLC - 146
OJSC_VIP_COM_CON_P;GOLDEN_CON_P;Y;USD;N;Y;;;N;EN_GOLDEN_CON_P;;;;Golden TeLecom, Inc. Consolidated
GOLDEN_CON_P;GOLDEN;N;RUB;Y;Y;;;Y;EN_GOLDEN;;;;Golden TeLecom, Inc.
GOLDEN_CON_P;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd - 037
GOLDEN_CON_P;GTLLC;N;UAH;Y;Y;;;Y;EN_GTLLC;;;;GOLDEN TELECOM Limited Liability Company
GOLDEN_CON_P;INVESTHOLD;N;UAH;Y;Y;;;Y;EN_INVESTHOLD;;;;Invest-Holding Limited Liability Company - 063
GOLDEN_CON_P;CELLUKR;N;UAH;Y;Y;;;Y;EN_CELLUKR;;;;CellUkraine Ltd - 015
GOLDEN_CON_P;WINTOP;N;UAH;Y;Y;;;Y;EN_WINTOP;;;;Wintop Management Ltd - 197
GOLDEN_CON_P;CELLCROFTHOLD;N;UAH;Y;Y;;;Y;EN_CELLCROFTHOLD;;;;Cellcroft Holdings Ltd - 014
GOLDEN_CON_P;CRADEL;N;UAH;Y;Y;;;Y;EN_CRADEL;;;;Cradel Investments Ltd - 022
GOLDEN_CON_P;CRAYOLA;N;UAH;Y;Y;;;Y;EN_CRAYOLA;;;;Crayola Properties Ltd - 023
GOLDEN_CON_P;CRISDENHOLD;N;UAH;Y;Y;;;Y;EN_CRISDENHOLD;;;;Crisden Holdings Ltd - 024
GOLDEN_CON_P;GTSUKR;N;UAH;Y;Y;;;Y;EN_GTSUKR;;;;GTS Ukrainian TeleSystems L.L.C. - 061
GOLDEN_CON_P;SFMTCIS_CON_P;Y;USD;N;Y;;;N;EN_SFMTCIS_CON_P;;;;SFMT_CIS Consolidated
SFMTCIS_CON_P;SFMTCIS;N;RUB;Y;Y;;;Y;EN_SFMTCIS;;;;SFMT_CIS - 118
SFMTCIS_CON_P;BARDYM_CON_P;Y;USD;N;Y;;;N;EN_BARDYM_CON_P;;;;Bardym Enterprises Ltd Consolidated
BARDYM_CON_P;BARDYM;N;RUB;Y;Y;;;Y;EN_BARDYM;;;;Bardym Enterprises Ltd - 007
BARDYM_CON_P;SOVINTEL_CON_P;Y;USD;N;Y;;;N;EN_SOVINTEL_CON_P;;;;Sovintel Group Consolidated
SOVINTEL_CON_P;SOVINTEL;N;RUB;Y;Y;;;Y;EN_SOVINTEL;;;;Sovintel Group - 125
SOVINTEL_CON_P;SAKHALIN;N;RUB;Y;Y;;;Y;EN_SAKHALIN;;;;Sakhalin Telekom Limited - 113
SOVINTEL_CON_P;ANTELRAS_CON_P;Y;USD;N;Y;;;N;EN_ANTELRAS_CON_P;;;;AnTel Rascom Limited Consolidated
ANTELRAS_CON_P;ANTEL;N;RUB;Y;Y;;;Y;EN_ANTEL;;;;AnTel Rascom Ltd - 003
ANTELRAS_CON_P;RASCOM;N;RUB;Y;Y;;;Y;EN_RASCOM;;;;Rascom - 099
SOVINTEL_CON_P;KUBTELE_CON_P;Y;USD;N;Y;;;N;EN_KUBTELE_CON_P;;;;Kubtelecom LLC Consolidated
KUBTELE_CON_P;KUBTELE;N;RUB;Y;Y;;;Y;EN_KUBTELE;;;;Kubtelecom LLC - 073
KUBTELE_CON_P;KUBINTER;N;RUB;Y;Y;;;Y;EN_KUBINTER;;;;Kubintersvyaz - 072
SFMTCIS_CON_P;GOLDHOLD_CON_P;Y;USD;N;Y;;;N;EN_GOLDHOLD_CON_P;;;;Golden Holdings, Inc. Consolidated
GOLDHOLD_CON_P;GOLDHOLD;N;RUB;Y;Y;;;Y;EN_GOLDHOLD;;;;Golden Holdings, Inc. - 039
GOLDHOLD_CON_P;AGAMA;N;RUB;Y;Y;;;Y;EN_AGAMA;;;;Agama Ltd - 001
SFMTCIS_CON_P;SFMTRUS_CON_P;Y;USD;N;Y;;;N;EN_SFMTRUS_CON_P;;;;SFMT-Rusnet, Inc. Consolidated
SFMTRUS_CON_P;SFMTRUS;N;RUB;Y;Y;;;Y;EN_SFMTRUS;;;;SFMT-Rusnet, Inc. - 119
SFMTRUS_CON_P;CLAFDOR_CON_P;Y;USD;N;Y;;;N;EN_CLAFDOR_CON_P;;;;Clafdor Investments Ltd Consolidated
CLAFDOR_CON_P;CLAFDOR;N;USD;Y;Y;;;Y;EN_CLAFDOR;;;;Clafdor Investments Ltd - 019
CLAFDOR_CON_P;COMNIDORHOLD_CON_P;Y;USD;N;Y;;;N;EN_COMNIDORHOLD_CON_P;;;;Comnidor Holdings Ltd Consolidated
COMNIDORHOLD_CON_P;COMNIDORHOLD;N;USD;Y;Y;;;Y;EN_COMNIDORHOLD;;;;Comnidor Holdings Ltd - 020
COMNIDORHOLD_CON_P;TWODAY;N;KZT;Y;Y;;;Y;EN_TWODAY;;;;2Day Telecom LLP - 143
SFMTRUS_CON_P;BUZTON;N;USD;Y;Y;;;Y;EN_BUZTON;;;;Joint Venture Buzton Ltd Liability Company - 011
SFMTRUS_CON_P;BUZTON_UZS;N;UZS;Y;Y;;;Y;EN_BUZTON_UZS;;;;Joint Venture Buzton Ltd Liability Company - Som - 012
SFMTRUS_CON_P;BARDYM_CON_P;N;USD;N;Y;;;N;EN_BARDYM_CON_P;;;;Bardym Enterprises Ltd Consolidated
SFMTRUS_CON_P;INVESTHOLD;N;UAH;Y;Y;;;Y;EN_INVESTHOLD;;;;Invest-Holding Limited Liability Company - 063
OJSC_VIP_COM_CON_P;OOOCKN;N;RUB;Y;Y;;;Y;EN_OOOCKN;;;;Investment Consultancy Agency Center of Commercial Real Estate - 091
OJSC_VIP_COM_CON_P;OJSCVIP_ICP;N;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications - 089
OJSC_VIP_COM_CON_P;RUSSIA_HYP_ADJ;N;RUB;Y;Y;;;Y;EN_RUSSIA_HYP_ADJ;;;;Vimpelcom Russia Hyperion adjustments - 112
OJSC_VIP_COM_CON_P;RUSSIA_ADJ;N;RUB;Y;Y;;;Y;EN_RUSSIA_ADJ;;;;Vimpelcom Russia adjustments - 111
OJSC_VIP_COM_CON_P;ALKAR;N;RUB;Y;Y;;;Y;EN_ALKAR;;;;Alkar - 002
OJSC_VIP_COM_CON_P;KOLANGON;N;RUB;Y;Y;;;Y;EN_KOLANGON;;;;KOLANGON OPTIM - 071
OJSC_VIP_COM_CON_P;STM;N;RUB;Y;Y;;;Y;EN_STM;;;;STM_Head_office - 129
OJSC_VIP_COM_CON_P;PRUNESCOM;N;RUB;Y;Y;;;Y;EN_PRUNESCOM;;;;Prunescom Ltd - 098
OJSC_VIP_COM_CON_P;SATILT;N;RUB;Y;Y;;;Y;EN_SATILT;;;;Satiltsentr - 116
OJSC_VIP_COM_CON_P;FORTLAND;N;RUB;Y;Y;;;Y;EN_FORTLAND;;;;Fortland Ltd - 029
OJSC_VIP_COM_CON_P;GOLDENTELGRP;N;RUB;Y;Y;;;Y;EN_GOLDENTELGRP;;;;Golden Telecom Group, Inc. - 036
OJSC_VIP_COM_CON_P;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd - 037
OJSC_VIP_COM_CON_P;GOLDENTELSRV;N;RUB;Y;Y;;;Y;EN_GOLDENTELSRV;;;;Golden Teleservices, Inc. - 038
OJSC_VIP_COM_CON_P;GTSFIN;N;RUB;Y;Y;;;Y;EN_GTSFIN;;;;GTS Finance, Inc. - 060
OJSC_VIP_COM_CON_P;CITILINE;N;RUB;Y;Y;;;Y;EN_CITILINE;;;;Citiline - 018
OJSC_VIP_COM_CON_P;FIRMESS;N;RUB;Y;Y;;;Y;EN_FIRMESS;;;;Firm Messenger - 028
OJSC_VIP_COM_CON_P;CIS_ADJ;N;USD;Y;Y;;;Y;EN_CIS_ADJ;;;;CIS Consolidation Adjustments
OJSC_VIP_COM_CON_P;CISWOKZ_LOC_Adj;N;USD;Y;Y;;;Y;EN_CISWOKZ_LOC_Adj;HPL1;;;CIS without Kazakstan Local Adjustments - 017
OJSC_VIP_COM_CON_P;Armen_Adj;N;USD;Y;Y;;;Y;EN_Armen_Adj;HPL2;;;Armenia Adjustments
OJSC_VIP_COM_CON_P;Georg_Adj;N;USD;Y;Y;;;Y;EN_Georg_Adj;HPL2;;;Georgia Adjustments
OJSC_VIP_COM_CON_P;Kyrgyz_Adj;N;USD;Y;Y;;;Y;EN_Kyrgyz_Adj;HPL2;;;Kyrgyzstan Adjustments
OJSC_VIP_COM_CON_P;CISWOKZ_HQ;N;USD;Y;Y;;;Y;EN_CISWOKZ_HQ;HPL1_HPL2;;;CIS without Kazakstan HQ - 016
OJSC_VIP_COM_CON_P;OJSCADJ;N;USD;Y;Y;;;Y;EN_OJSCADJ;;;;OJSC Vimpel adjustment - 086
OJSC_VIP_COM_CON_P;OJSCADJ_RUB;N;RUB;Y;Y;;;Y;EN_OJSCADJ_RUB;;;;OJSC Vimpel adjustment RUB - 087
OJSC_VIP_COM_CON_P;GTIKAZTEL;N;USD;Y;Y;;;Y;EN_GTIKAZTEL;;;;GTI Kaztel Ltd - 053
OJSC_VIP_COM_CON_P;GTLVIS;N;USD;Y;Y;;;Y;EN_GTLVIS;;;;GTL VIS Operations - 055
OJSC_VIP_COM_CON_P;STHOLD;N;RUB;Y;Y;;;Y;EN_STHOLD;;;;ST-Holding, s - 128
OJSC_VIP_COM_CON_P;VIPFBV;N;USD;Y;Y;;;Y;EN_VIPFBV;;;;Vimpelcom Finance BV - 157
OJSC_VIP_COM_CON_P;ERUS;N;RUB;Y;Y;;;Y;EN_ERUS;;;;EURUS HOLDING B.V. 
OJSC_VIP_COM_CON_P;SIM;N;RUB;Y;Y;;;Y;EN_SIM;;;;LLC SIM TELECOM
OJSC_VIP_COM_CON_P;NTC;N;RUB;Y;Y;;;Y;EN_NTC;;;;National Tower Company
OJSC_VIP_COM_CON_P;SAMARA;N;RUB;Y;Y;;;Y;EN_SAMARA;;;;Samara Telecom - 115
VIPHOLD_CON_P;PJS_CON_P;Y;USD;N;Y;;;N;EN_PJS_CON_P;;;;PJS Company Kyivstar Consolidated
PJS_CON_P;KYIVSTAR;N;UAH;Y;Y;;;Y;EN_KYIVSTAR;;;;Kyivstar - 074
PJS_CON_P;STARAVTO;N;UAH;Y;Y;;;Y;EN_STARAVTO;;;;Kyivstar GSM Joint Stock Company Subsidiary "Staravto" - 126
PJS_CON_P;STARMONEY;N;UAH;Y;Y;;;Y;EN_STARMONEY;;;;Kyivstar GSM Joint Stock Company Subsidiary "Starmoney" - 127
VIPHOLD_CON_P;VIPGEORGIA_CON_P;Y;USD;N;Y;;;N;EN_VIPGEORGIA_CON_P;;;;VimpelCom Georgia Holdings BV Consolidated
VIPGEORGIA_CON_P;VIPGEORGIA;N;USD;Y;Y;;;Y;EN_VIPGEORGIA;;;;VimpelCom Georgia Holdings BV - 160
VIPGEORGIA_CON_P;INVESTICO_CON_P;Y;USD;N;Y;;;N;EN_INVESTICO_CON_P;;;;Investico Alliance Ltd Consolidated
INVESTICO_CON_P;INVESTICO;N;USD;Y;Y;;;Y;EN_INVESTICO;;;;Investico Alliance Ltd - 064
INVESTICO_CON_P;MOBITEL;N;GEL;Y;Y;;;Y;EN_MOBITEL;;;;Mobitel LLC - 082
VIPHOLD_CON_P;VIPBVI_CON_P;Y;USD;N;Y;;;N;EN_VIPBVI_CON_P;;;;VimpelCom BVI Ltd Consolidated
VIPBVI_CON_P;VIPBVI;N;USD;Y;Y;;;Y;EN_VIPBVI;;;;VimpelCom BVI Ltd - 153
VIPBVI_CON_P;TACOM_TOT_P;Y;USD;N;Y;;;N;EN_TACOM_TOT_P;;;;TACOM LLC Consolidated
TACOM_TOT_P;TACOM;N;USD;Y;Y;;;Y;EN_TACOM;;;;TACOM LLC - 131
TACOM_TOT_P;TACOM_Adj;N;USD;Y;Y;;;Y;EN_TACOM_Adj;HPL2;;;TACOM LLC Adjustments
VIPHOLD_CON_P;VIPARMHOLD;N;USD;Y;Y;;;Y;EN_VIPARMHOLD;;;;VimpelCom Armenia Holding B.V. - 151
VIPHOLD_CON_P;VIPMICRO_CON_P;Y;USD;N;Y;;;N;EN_VIPMICRO_CON_P;;;;VimpelCom Micro Holdings BV Consolidated
VIPMICRO_CON_P;VIPMICRO;N;USD;Y;Y;;;Y;EN_VIPMICRO;;;;VimpelCom Micro Holdings BV - 174
VIPMICRO_CON_P;TETA_CON_P;Y;USD;N;Y;;;N;EN_TETA_CON_P;;;;TETA Telecom LLP Consolidated
TETA_CON_P;TETA;N;KZT;Y;Y;;;Y;EN_TETA;;;;TETA Telecom LLP - 134
TETA_CON_P;TNSPLUS_TOT_P;Y;USD;N;Y;;;N;EN_TNSPLUS_TOT_P;;;;TNS-Plus LLP Consolidated
TNSPLUS_TOT_P;TNSPLUS;N;KZT;Y;Y;;;Y;EN_TNSPLUS;;;;TNS-Plus LLP - 140
TNSPLUS_TOT_P;TNSPLUS_Adj;N;KZT;Y;Y;;;Y;EN_TNSPLUS_Adj;;;;TNS-Plus LLP Adjustments
VIPHOLD_CON_P;VIPLUXHOLDSARL_CON_P;Y;USD;N;Y;;;N;EN_VIPLUXHOLDSARL_CON_P;;;;VimpelCom Luxembourg Holdings SARL Consolidated
VIPLUXHOLDSARL_CON_P;VIPLUXHOLDSARL;N;EUR;Y;Y;;;Y;EN_VIPLUXHOLDSARL;;;;VimpelCom Luxembourg Holdings SARL
VIPLUXHOLDSARL_CON_P;WEATHER_CON_P;Y;USD;N;Y;;;N;EN_WEATHER_CON_P;;;;Weather Capital Consolidated
WEATHER_CON_P;WCSARL;N;EUR;Y;Y;;;Y;EN_WCSARL;;;;WC_SARL - Weather Capital S.a.r.l
WEATHER_CON_P;WCSP;N;EUR;Y;Y;;;Y;EN_WCSP;;;;WCSP - Weather Capital Special Purposes I SA
WEATHER_CON_P;VTHBV;N;EUR;Y;Y;;;Y;EN_VTHBV;;;;VTHBV - VimpelCom Telecom Holding BV - 175
WEATHER_CON_P;WC_SARL_EUR_B;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR_B;;;;Weather Capital S.a.r.l BRANCH - 180
WEATHER_CON_P;WC_SARL_EUR;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR;HPL1_HPL2;;;Weather Capital S.a.r.l - 179
WEATHER_CON_P;WCSP_CON_P;Y;USD;N;Y;;;N;EN_WCSP_CON_P;;;;Weather Capital Special Purposes I SA Consolidated
WCSP_CON_P;WCSP_USD_B;N;USD;Y;Y;;;Y;EN_WCSP_USD_B;;;;Weather Capital Special Purposes I SA in USD BRANCH - 184
WCSP_CON_P;WCSP_USD;N;USD;Y;Y;;;Y;EN_WCSP_USD;HPL1_HPL2;;;Weather Capital Special Purposes I SA in USD - 183
WCSP_CON_P;GTH_CON_P;Y;USD;N;Y;;;N;EN_GTH_CON_P;;;;Global Telecom Holding SAE Consolidated
GTH_CON_P;GTH_M_CON_P;Y;USD;N;Y;;;N;EN_GTH_M_CON_P;;;;Total Global Telecom Holding SAE consolidated
GTH_M_CON_P;GTH;N;EGP;Y;Y;;;Y;EN_GTH;HPL1_HPL2;;;Global Telecom Holding S.A.E. - 044
GTH_M_CON_P;GTH_USD;N;USD;Y;Y;;;Y;EN_GTH_USD;;;;Global Telecom Holding S.A.E. USD - 048
GTH_M_CON_P;GTH_REC_USD;N;USD;Y;Y;;;Y;EN_GTH_REC_USD;;;;Global Telecom Holding S.A.E. Reclass Adjustments USD - 047
GTH_CON_P;GTH_M_Adj_CON_P;Y;USD;N;Y;;;N;EN_GTH_M_Adj_CON_P;;;;Total Global Telecom Holding SAE Adjustments consolidated
GTH_M_Adj_CON_P;GTH_ADJ;N;EGP;Y;Y;;;Y;EN_GTH_ADJ;;;;Global Telecom Holding S.A.E. adjustments - 045
GTH_M_Adj_CON_P;GTH_USD_ADJ;N;USD;Y;Y;;;Y;EN_GTH_USD_ADJ;;;;Global Telecom Holding S.A.E. adjustments USD - 049
GTH_CON_P;GTHFBV;N;USD;Y;Y;;;Y;EN_GTHFBV;;;;GTH Finance B.V. - 051
GTH_CON_P;OTH_MINV;N;EGP;Y;Y;;;Y;EN_OTH_MINV;;;;Orascom Holding Handset Investment Company - 096
GTH_CON_P;MEDCABLE;N;EUR;Y;Y;;;Y;EN_MEDCABLE;;;;Med Cable Ltd. - 078
GTH_CON_P;ITCL_CON_P;Y;USD;N;Y;;;N;EN_ITCL_CON_P;;;;International Telecommunication Consortium Ltd Consolidated
ITCL_CON_P;ITCL;N;GBP;Y;Y;;;Y;EN_ITCL;;;;International Telecommunication Consortium Ltd. - 066
ITCL_CON_P;CAT;N;DZD;Y;Y;;;Y;EN_CAT;;;;Consortium Algerien de Telecommunications S.p.A - 013
GTH_CON_P;CAT;N;DZD;Y;Y;;;Y;EN_CAT;;;;Consortium Algerien de Telecommunications S.p.A - 013
GTH_CON_P;MOGA_CON_P;Y;USD;N;Y;;;N;EN_MOGA_CON_P;;;;Moga Holding Ltd. Consolidated
MOGA_CON_P;MOGA;N;USD;Y;Y;;;Y;EN_MOGA;;;;Moga Holding Ltd. - 083
MOGA_CON_P;OMNIUM_CON_P;Y;USD;N;Y;;;N;EN_OMNIUM_CON_P;;;;Omnium Telecom Algeria SPA Consolidated
OMNIUM_CON_P;OPTIMUM;N;DZD;Y;Y;;;Y;EN_OPTIMUM;;;;Optimum Telecom Algeria SPA - 092
OMNIUM_CON_P;OMNIUM;Y;DZD;Y;Y;;;Y;EN_OMNIUM;;;;Omnium Telecom Algeria SPA - 090
OMNIUM_CON_P;OTA;N;DZD;Y;Y;;;Y;EN_OTA;;;;Orascom Telecom Algerie SPA - 094
GTH_CON_P;OMNIUM_CON_P;N;USD;N;Y;;;N;EN_OMNIUM_CON_P;;;;Omnium Telecom Algeria SPA Consolidated
GTH_CON_P;ORATEL_CON_P;Y;USD;N;Y;;;N;EN_ORATEL_CON_P;;;;Oratel International Inc. Consolidated
ORATEL_CON_P;ORATEL;N;USD;Y;Y;;;Y;EN_ORATEL;;;;Oratel International Inc. - 093
ORATEL_CON_P;OMNIUM_CON_P;N;USD;N;Y;;;N;EN_OMNIUM_CON_P;;;;Omnium Telecom Algeria SPA Consolidated
GTH_CON_P;MINIMAX;N;USD;Y;Y;;;Y;EN_MINIMAX;;;;Minimax Ventures Limited - 080
GTH_CON_P;WBANK;N;PKR;Y;Y;;;Y;EN_WBANK;HPL1_HPL2;;;Waseela Microfinance Bank Limited - 177
GTH_CON_P;IHL_CON_P;Y;USD;N;Y;;;N;EN_IHL_CON_P;;;;Iraq Holding Limited Consolidated
IHL_CON_P;IHL;N;USD;Y;Y;;;Y;EN_IHL;;;;Iraq Holding Limited - 062
IHL_CON_P;TICL;N;USD;Y;Y;;;Y;EN_TICL;;;;Telecom Iraq Corp. Limited - 137
GTH_CON_P;T_CSL_CON_P;Y;USD;N;Y;;;N;EN_T_CSL_CON_P;;;;Telecom CS Limited Consolidated
T_CSL_CON_P;T_CSL;N;USD;Y;Y;;;Y;EN_T_CSL;;;;Telecom CS Limited - 130
T_CSL_CON_P;CORTEX_EG;N;EGP;Y;Y;;;Y;EN_CORTEX_EG;;;;Cortex for Services and Consultations S.A.E. - 021
GTH_CON_P;IWCPL_SA_CON_P;Y;USD;N;Y;;;N;EN_IWCPL_SA_CON_P;;;;International Wireless Communications Pakistan Limited Consolidated
IWCPL_SA_CON_P;IWCPL_SA;N;USD;Y;Y;;;Y;EN_IWCPL_SA;;;;International Wireless Communications Pakistan Limited - 067
IWCPL_SA_CON_P;TMGL;N;USD;Y;Y;;;Y;EN_TMGL;;;;Telecom Management Group Limited - 139
IWCPL_SA_CON_P;PMCL_CON_P;Y;USD;N;Y;;;N;EN_PMCL_CON_P;;;;Pakistan Mobile Communications Ltd. Consolidated
PMCL_CON_P;PMCL;N;PKR;Y;Y;;;Y;EN_PMCL;;;;Pakistan Mobile Communications Ltd. - 097
PMCL_CON_P;DEODAR;N;PKR;Y;Y;;;Y;EN_DEODAR;;;;Deodar (Private) Limited
PMCL_CON_P;BC;N;PKR;Y;Y;;;Y;EN_BC;;;;Business & Communication Systems (Pvt) Ltd - 008
PMCL_CON_P;WARID;N;PKR;Y;Y;;;Y;EN_WARID;HPL1_HPL2;;;Warid Telecom (Pvt) Ltd
PMCL_CON_P;LDNTEL_CON_P;Y;USD;N;Y;;;N;EN_LDNTEL_CON_P;;;;LinkDotNet Telecom Limited Consolidated
LDNTEL_CON_P;LDNTEL;N;PKR;Y;Y;;;Y;EN_LDNTEL;;;;LinkDotNet Telecom Limited - 076
LDNTEL_CON_P;LDNPAK;N;PKR;Y;Y;;;Y;EN_LDNPAK;;;;LinkdoNet Pakistan (Private) Limited - 075
GTH_CON_P;DMSLTD;N;USD;Y;Y;;;Y;EN_DMSLTD;;;;Database Management Services Ltd (Maltese Entity) - 026
GTH_CON_P;FPPL_CON_P;Y;USD;N;Y;;;N;EN_FPPL_CON_P;;;;Financial Powers Plan Ltd. Consolidated
FPPL_CON_P;FPPL;N;USD;Y;Y;;;Y;EN_FPPL;;;;Financial Powers Plan Ltd. - 030
FPPL_CON_P;OTESOP;N;USD;Y;Y;;;Y;EN_OTESOP;;;;Orascom Telecom Esop Ltd. - 095
GTH_CON_P;TVL_CON_P;Y;USD;N;Y;;;N;EN_TVL_CON_P;;;;Telecom Ventures Limited Consolidated
TVL_CON_P;TVL;N;USD;Y;Y;;;Y;EN_TVL;;;;Telecom Ventures Limited - 142
TVL_CON_P;BDCL;N;BDT;Y;Y;;;Y;EN_BDCL;;;;Banglalink Digital Communications Limited - 009
GTH_CON_P;THCML_CON_P;Y;USD;N;Y;;;N;EN_THCML_CON_P;;;;Telecom Holding Canada (Malta) Limited Consolidated
THCML_CON_P;THCML;N;CAD;Y;Y;;;Y;EN_THCML;;;;Telecom Holding Canada (Malta) Limited - 136
THCML_CON_P;GTHC_BV_CON_P;Y;USD;N;Y;;;N;EN_GTHC_BV_CON_P;;;;GTH Canada B.V. Consolidated
GTHC_BV_CON_P;GTHC_BV;N;USD;Y;Y;;;Y;EN_GTHC_BV;;;;GTH Canada B.V. - 050
GTHC_BV_CON_P;GTF_BC;N;USD;Y;Y;;;Y;EN_GTF_BC;;;;GTH Global Telecom Finance (B.C.) - 042
GTH_CON_P;SAWLTD_CON_P;Y;USD;N;Y;;;N;EN_SAWLTD_CON_P;;;;Sawyer Limited Consolidated
SAWLTD_CON_P;SAWLTD;N;USD;Y;Y;;;Y;EN_SAWLTD;;;;Sawyer Limited - 117
SAWLTD_CON_P;EURASIA;N;USD;Y;Y;;;Y;EN_EURASIA;;;;Orascom Telecom Eurasia Ltd. - 027
GTH_CON_P;RING_CON_P;Y;USD;N;Y;;;N;EN_RING_CON_P;;;;Ring Consolidated
RING_CON_P;RING_AEI_CON_P;Y;USD;N;Y;;;N;EN_RING_AEI_CON_P;;;;Advanced Electronic Industries Consolidated
RING_AEI_CON_P;RING_AEI;N;USD;Y;Y;;;Y;EN_RING_AEI;;;;Advanced Electronic Industries - 100
RING_AEI_CON_P;RING_RD;N;TND;Y;Y;;;Y;EN_RING_RD;;;;R & D S.a.r.l. - 110
RING_AEI_CON_P;RING_PAK_CON_P;Y;USD;N;Y;;;N;EN_RING_PAK_CON_P;;;;Ring Distribution (Private) Limited (Ring Pakistan) Consolidated
RING_PAK_CON_P;RING_PAK;N;PKR;Y;Y;;;Y;EN_RING_PAK;;;;Ring Distribution (Private) Limited (Ring Pakistan) - 108
RING_PAK_CON_P;RING_PAKS;N;PKR;Y;Y;;;Y;EN_RING_PAKS;;;;CaRing (Private) Limited (Ring Pakistan Service) - 109
RING_CON_P;MMMS;N;EGP;Y;Y;;;Y;EN_MMMS;;;;Multi Media Mega Stores - 081
RING_CON_P;RING_ALG_CON_P;Y;USD;N;Y;;;N;EN_RING_ALG_CON_P;;;;Ring Algeria LLC Consolidated
RING_ALG_CON_P;RING_ALG;N;DZD;Y;Y;;;Y;EN_RING_ALG;;;;Ring Algeria LLC - 101
RING_ALG_CON_P;RING_ALGS;N;DZD;Y;Y;;;Y;EN_RING_ALGS;;;;Ring Maintenance - CARING LLC - 102
RING_CON_P;RING_MAINT;N;EGP;Y;Y;;;Y;EN_RING_MAINT;;;;Ring Distribution SAE - 107
RING_CON_P;RING_EG;N;EGP;Y;Y;;;Y;EN_RING_EG;;;;Ring for Handset Service (CaRing) - 105
RING_CON_P;RING_BANG;N;BDT;Y;Y;;;Y;EN_RING_BANG;;;;Ring Distribution (Private) Limited (Ring Bangladesh) - 103
RING_CON_P;RING_DUBAI;N;AED;Y;Y;;;Y;EN_RING_DUBAI;;;;The Phone Company FZO - 104
RING_CON_P;RING_IRAQ;N;USD;Y;Y;;;Y;EN_RING_IRAQ;;;;Ring Iraq - 106
GTH_CON_P;GLFSCA;N;USD;Y;Y;;;Y;EN_GLFSCA;;;;Global Luxembourg Finance S.C.A. - 033
GTH_CON_P;GTFSCA;N;USD;Y;Y;;;Y;EN_GTFSCA;;;;Global Telecom Finance SCA - 043
GTH_CON_P;GTO;N;EUR;Y;Y;;;Y;EN_GTO;;;;Global Telecom One Sarl - 058
GTH_CON_P;GT_OSCAR;N;USD;Y;Y;;;Y;EN_GT_OSCAR;;;;Global Telecom Oscar - 040
GTH_CON_P;GTSARL;N;USD;Y;Y;;;Y;EN_GTSARL;;;;Global Telecom SARL - 059
GTH_CON_P;GLSARL;N;USD;Y;Y;;;Y;EN_GLSARL;;;;Global Luxembourg S.a.r.l. - 034
GTH_CON_P;GTACQ_CON_P;Y;USD;N;Y;;;N;EN_GTACQ_CON_P;;;;Global Telecom Acquisition Consolidated
GTACQ_CON_P;GTACQ;N;EUR;Y;Y;;;Y;EN_GTACQ;;;;Global Telecom Acquisition - 041
GTACQ_CON_P;OTSE_NEW;N;EUR;Y;Y;;;Y;EN_OTSE_NEW;;;;Orascom Telecom Service Europe
GTH_CON_P;GTNBV_CON_P;Y;USD;N;Y;;;N;EN_GTNBV_CON_P;;;;Global Telecom Netherlands BV Consolidated
GTNBV_CON_P;GTNBV;N;EUR;Y;Y;;;Y;EN_GTNBV;;;;Global Telecom Netherlands BV
GTNBV_CON_P;GTNBVUSD;N;USD;Y;Y;;;Y;EN_GTNBVUSD;;;;Global Telecom Netherlands BV USD - 057
GTNBV_CON_P;TIL_CON_P;Y;USD;N;Y;;;N;EN_TIL_CON_P;;;;Telecel International Ltd Consolidated
TIL_CON_P;TIL;N;USD;Y;Y;;;Y;EN_TIL;;;;Telecel International Ltd - 138
TIL_CON_P;TELE_SA;N;CHF;Y;Y;;;Y;EN_TELE_SA;;;;Telecel International Services SA - 133
TIL_CON_P;TZIM;N;USD;Y;Y;;;Y;EN_TZIM;;;;Telecel Zimbabwe Private limited - 144
GTH_CON_P;GTH_C;N;CAD;Y;Y;;;Y;EN_GTH_C;;;;GTH Global Telecom Holding (Canada) Limited - 046
GTH_CON_P;TCAR;N;XAF;Y;Y;;;Y;EN_TCAR;;;;Telecel Centrafrique S.A. - 132
GTH_CON_P;TGLOBE;N;USD;Y;Y;;;Y;EN_TGLOBE;;;;Telecel Globe Limited - 135
GTH_CON_P;TUCOM;N;BIF;Y;Y;;;Y;EN_TUCOM;;;;U-Com Burundi - 141
GTH_CON_P;EURASIA;N;USD;Y;Y;;;Y;EN_EURASIA;;;;Orascom Telecom Eurasia Ltd. - 027
WEATHER_CON_P;GTH_CON_P;N;USD;N;Y;;;N;EN_GTH_CON_P;;;;Global Telecom Holding SAE Consolidated
VIPHOLD_CON_P;SALFINSARL;N;USD;Y;Y;;;Y;EN_SALFINSARL;;;;Salsa Finance S.a r.l. - 114
VIPAMS_CON_P;WIND_CON_P;Y;USD;N;Y;;;N;EN_WIND_CON_P;;;;Wind Telecom S.p.A. Consolidated
WIND_CON_P;WT;N;EUR;Y;Y;;;Y;EN_WT;HPL1_HPL2;;;Wind Telecom S.p.A. - 198
WIND_CON_P;WT_ADJ;N;EUR;Y;Y;;;Y;EN_WT_ADJ;;;;Wind Telecom Group Adjustments Entity - 199
WIND_CON_P;KLAROLUX;N;EUR;Y;Y;;;Y;EN_KLAROLUX;;;;KLAROLUX - Klarolux Investments Sarl - 070
WIND_CON_P;WINDACQHOLD_CON_P;Y;USD;N;Y;;;N;EN_WINDACQHOLD_CON_P;;;;Wind Acquisition Holdings Finance SpA Consolidated
WINDACQHOLD_CON_P;WINDACQHOLD;N;EUR;Y;Y;;;Y;EN_WINDACQHOLD;HPL1_HPL2;;;Wind Acquisition Holdings Finance SpA - 189
WINDACQHOLD_CON_P;WINDACQHOLD_ADJ;N;EUR;Y;Y;;;Y;EN_WINDACQHOLD_ADJ;;;;Wind Acquisition Holdings Finance SpA Adjustments - 190
WINDACQHOLD_CON_P;WINDACQHOLDFIN;N;EUR;Y;Y;;;Y;EN_WINDACQHOLDFIN;;;;Wind Acquisition Holdings Finance SA - 191
WINDACQHOLD_CON_P;WINDACQHOLDFINII;N;EUR;Y;Y;;;Y;EN_WINDACQHOLDFINII;;;;Wind Acquisition Holdings Finance II SA - 192
WINDACQHOLD_CON_P;WINDTELCO_CON_P;Y;USD;N;Y;;;N;EN_WINDTELCO_CON_P;;;;Wind Telecomunicazioni SpA Consolidated
WINDTELCO_CON_P;WINDTELCO;N;EUR;Y;Y;;;Y;EN_WINDTELCO;;;;Wind Telecomunicazioni SpA - 195
WINDTELCO_CON_P;WIND_OPCO_ADJ_BUD;N;EUR;Y;Y;;;Y;EN_WIND_OPCO_ADJ_BUD;;;;Wind Italy Operations Budget Adj - 186
WINDTELCO_CON_P;WINDTELCO_ADJ;N;EUR;Y;Y;;;Y;EN_WINDTELCO_ADJ;HPL1_HPL2;;;Wind Telecomunicazioni SpA Adjustments - 196
WINDTELCO_CON_P;GALATA;N;EUR;Y;Y;;;Y;EN_GALATA;;;;Galata S.p.A - 032
WINDTELCO_CON_P;WINDACQFINII;N;EUR;Y;Y;;;Y;EN_WINDACQFINII;;;;Wind Acquisition Finance II S.A. - 188
WINDTELCO_CON_P;WINDACQFIN;N;EUR;Y;Y;;;Y;EN_WINDACQFIN;;;;Wind Acquisition Finance S.A. - 187
WINDTELCO_CON_P;WINDFIN;N;EUR;Y;Y;;;Y;EN_WINDFIN;;;;Wind Finance SL S.A. - 193
WINDTELCO_CON_P;WINDRETAIL;N;EUR;Y;Y;;;Y;EN_WINDRETAIL;;;;Wind Retail SRL - 194
VIPAMS_CON_P;VIPLUX;Y;USD;Y;Y;;;Y;EN_VIPLUX;;;;Vimpelcom Luxembourg Holding S.a.r.l - 173
TOTAL_ENTITY;VIP_MANAGERIAL_USD;Y;USD;N;Y;;;N;EN_VIP_MANAGERIAL_USD;;;;VimpelCom Managerial Consolidation
VIP_MANAGERIAL_USD;Total_Business;Y;USD;N;Y;;;N;EN_Total_Business;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total VimpelCom operational business
Total_Business;RUSSIA_M;Y;USD;N;Y;;;N;EN_RUSSIA_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Russia
RUSSIA_M;NTC;N;RUB;Y;Y;;;Y;EN_NTC;;;;National Tower Company
RUSSIA_M;RUSSIA_woNTC_M;Y;USD;N;Y;;;N;EN_RUSSIA_woNTC_M;;;VIP_MANAGERIAL_USD;Total Russia (Legal Point of View)
RUSSIA_woNTC_M;OJSCVIP;N;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications
RUSSIA_woNTC_M;OJSCVIP_ICP;N;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications - ICP
RUSSIA_woNTC_M;RUSSIA_HYP_ADJ;N;RUB;Y;Y;;;N;EN_RUSSIA_HYP_ADJ;;;;Vimpelcom Russia adjustments
RUSSIA_woNTC_M;RUSSIA_ADJ;N;RUB;Y;Y;;;Y;EN_RUSSIA_ADJ;;;;Vimpelcom Russia adjustments
RUSSIA_woNTC_M;VIPFINLLC;N;RUB;Y;Y;;;Y;EN_VIPFINLLC;;;;VimpelCom Finance LLC
RUSSIA_woNTC_M;VIPINV;N;RUB;Y;Y;;;Y;EN_VIPINV;;;;VimpelCom Invest
RUSSIA_woNTC_M;BEELINE;N;RUB;Y;Y;;;Y;EN_BEELINE;;;;Beeline Venchures
RUSSIA_woNTC_M;OOOCKN;N;RUB;Y;Y;;;Y;EN_OOOCKN;;;;Investment Consultancy Agency Center of Commercial Real Estate
RUSSIA_woNTC_M;DICOM;N;RUB;Y;Y;;;Y;EN_DICOM;;;;Dicom
RUSSIA_woNTC_M;ALKAR;N;RUB;Y;Y;;;Y;EN_ALKAR;;;;Alkar
RUSSIA_woNTC_M;KOLANGON;N;RUB;Y;Y;;;Y;EN_KOLANGON;;;;KOLANGON OPTIM
RUSSIA_woNTC_M;STM;N;RUB;Y;Y;;;Y;EN_STM;;;;STM_Head_office
RUSSIA_woNTC_M;VCESOP;N;RUB;Y;Y;;;Y;EN_VCESOP;;;;VC Esop N.V.
RUSSIA_woNTC_M;NOUSE;N;RUB;Y;Y;;;Y;EN_NOUSE;;;;Nouse Ltd
RUSSIA_woNTC_M;NATSER;N;RUB;Y;Y;;;Y;EN_NATSER;;;;Closed Joint Stock Company National Service Company""
RUSSIA_woNTC_M;PRUNESCOM;N;RUB;Y;Y;;;Y;EN_PRUNESCOM;;;;Prunescom Ltd
RUSSIA_woNTC_M;ARARIMA;N;RUB;Y;Y;;;Y;EN_ARARIMA;;;;Ararima Enterprises Ltd
RUSSIA_woNTC_M;SOVINTEL;N;RUB;Y;Y;;;Y;EN_SOVINTEL;;;;Sovintel Group
RUSSIA_woNTC_M;ANTEL;N;RUB;Y;Y;;;Y;EN_ANTEL;;;;AnTel Rascom Ltd
RUSSIA_woNTC_M;KUBTELE;N;RUB;Y;Y;;;Y;EN_KUBTELE;;;;Kubtelecom LLC
RUSSIA_woNTC_M;KUBINTER;N;RUB;Y;Y;;;Y;EN_KUBINTER;;;;Kubintersvyaz
RUSSIA_woNTC_M;SATILT;N;RUB;Y;Y;;;Y;EN_SATILT;;;;Satiltsentr
RUSSIA_woNTC_M;SAKHALIN;N;RUB;Y;Y;;;Y;EN_SAKHALIN;;;;Sakhalin Telekom Limited
RUSSIA_woNTC_M;FORTLAND;N;RUB;Y;Y;;;Y;EN_FORTLAND;;;;Fortland Ltd
RUSSIA_woNTC_M;GOLDEN;N;RUB;Y;Y;;;Y;EN_GOLDEN;;;;Golden TeLecom, Inc.
RUSSIA_woNTC_M;SFMTCIS;N;RUB;Y;Y;;;Y;EN_SFMTCIS;;;;SFMT_CIS
RUSSIA_woNTC_M;BARDYM;N;RUB;Y;Y;;;Y;EN_BARDYM;;;;Bardym Enterprises Ltd
RUSSIA_woNTC_M;GOLDENTELGRP;N;RUB;Y;Y;;;Y;EN_GOLDENTELGRP;;;;Golden Telecom Group, Inc.
RUSSIA_woNTC_M;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd
RUSSIA_woNTC_M;GOLDENTELSRV;N;RUB;Y;Y;;;Y;EN_GOLDENTELSRV;;;;Golden Teleservices, Inc.
RUSSIA_woNTC_M;GTSFIN;N;RUB;Y;Y;;;Y;EN_GTSFIN;;;;GTS Finance, Inc.
RUSSIA_woNTC_M;GOLDHOLD;N;RUB;Y;Y;;;Y;EN_GOLDHOLD;;;;Golden Holdings, Inc.
RUSSIA_woNTC_M;CITILINE;N;RUB;Y;Y;;;Y;EN_CITILINE;;;;Citiline
RUSSIA_woNTC_M;AGAMA;N;RUB;Y;Y;;;Y;EN_AGAMA;;;;Agama Ltd
RUSSIA_woNTC_M;RASCOM;N;RUB;Y;Y;;;Y;EN_RASCOM;;;;Rascom
RUSSIA_woNTC_M;SFMTRUS;N;RUB;Y;Y;;;Y;EN_SFMTRUS;;;;SFMT-Rusnet, Inc.
RUSSIA_woNTC_M;VESTBALT;N;RUB;Y;Y;;;Y;EN_VESTBALT;;;;Vestbalt telekom (also CJSC WBT)
RUSSIA_woNTC_M;STHOLD;N;RUB;Y;Y;;;Y;EN_STHOLD;;;;ST-Holding, s.r.o.
RUSSIA_woNTC_M;FIRMESS;N;RUB;Y;Y;;;Y;EN_FIRMESS;;;;Firm Messenger
RUSSIA_woNTC_M;SAMARA;N;RUB;Y;Y;;;Y;EN_SAMARA;;;;Samara Telecom
RUSSIA_woNTC_M;SMARTS_AST;N;RUB;Y;Y;;;Y;EN_SMARTS_AST;;;;SMARTS-Astrakhan
RUSSIA_woNTC_M;SMARTS_SAR;N;RUB;Y;Y;;;Y;EN_SMARTS_SAR;;;;SMARTS-Saratov
RUSSIA_woNTC_M;SMARTS_ELI;N;RUB;Y;Y;;;Y;EN_SMARTS_ELI;;;;SMARTS-Elista
RUSSIA_woNTC_M;ERUS;N;RUB;Y;Y;;;Y;EN_ERUS;;;;EURUS HOLDING B.V. 
RUSSIA_woNTC_M;SIM;N;RUB;Y;Y;;;Y;EN_SIM;;;;LLC SIM TELECOM
Total_Business;Total_Business_Disc;Y;USD;N;Y;;;N;EN_Total_Business;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Business Discontinued
Total_Business_Disc;ITALY_M;Y;USD;N;Y;;;N;EN_ITALY_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Italy
ITALY_M;WINDTELCO_ADJ;N;EUR;Y;Y;;;Y;EN_WINDTELCO_ADJ;HPL1_HPL2;;;Wind Telecomunicazioni SpA Adjustments
ITALY_M;WIND_OPCO_M;Y;USD;N;Y;;;N;EN_WIND_OPCO_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Wind Italy Operations
WIND_OPCO_M;WIND_OPCO_ADJ_BUD;N;EUR;Y;Y;;;Y;EN_WIND_OPCO_ADJ_BUD;;;;Wind Italy Operations Budget Adj
WIND_OPCO_M;WINDTELCO;N;EUR;Y;Y;;;Y;EN_WINDTELCO;;;;Wind Telecomunicazioni SpA
WIND_OPCO_M;WINDRETAIL;N;EUR;Y;Y;;;Y;EN_WINDRETAIL;;;;Wind Retail SRL
WIND_OPCO_M;GALATA;N;EUR;Y;Y;;;Y;EN_GALATA;;;;Galata
ITALY_M;WAF_LUXCO_M;Y;USD;N;Y;;;N;EN_WAF_LUXCO_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;WAF Luxembourg
WAF_LUXCO_M;WINDACQFINII;N;EUR;Y;Y;;;Y;EN_WINDACQFINII;;;;Wind Acquisition Finance II S.A.
WAF_LUXCO_M;WINDACQFIN;N;EUR;Y;Y;;;Y;EN_WINDACQFIN;;;;Wind Acquisition Finance S.A.
WAF_LUXCO_M;WINDFIN;N;EUR;Y;Y;;;Y;EN_WINDFIN;;;;Wind Finance SL S.A.
Total_Business_Disc;WINDACQHOLD_ADJ;N;EUR;Y;Y;;;Y;EN_WINDACQHOLD_ADJ;;;;Wind Acquisition Holdings Finance SpA Adjustments
Total_Business_Disc;WINDACQHOLD;N;EUR;Y;Y;;;Y;EN_WINDACQHOLD;HPL1_HPL2;;;Wind Acquisition Holdings Finance SpA
Total_Business_Disc;WAHF_LUXCO_M_Disc;Y;USD;N;Y;;;N;EN_WAHF_LUXCO_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;WAHF Luxembourg Discontinued Operations
WAHF_LUXCO_M_Disc;WINDACQHOLDFINII;N;EUR;Y;Y;;;Y;EN_WINDACQHOLDFINII;;;;Wind Acquisition Holdings Finance II SA
WAHF_LUXCO_M_Disc;WINDACQHOLDFIN;N;EUR;Y;Y;;;Y;EN_WINDACQHOLDFIN;;;;Wind Acquisition Holdings Finance SA
Total_Business;EM_MARK_M;Y;USD;N;Y;;;N;EN_EM_MARK_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Emerging Markets
EM_MARK_M;Algeria_M;Y;USD;N;Y;;;N;EN_Algeria_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Algeria
Algeria_M;OTA;N;DZD;Y;Y;;;Y;EN_OTA;;;;Orascom Telecom Algerie SPA
Algeria_M;OPTIMUM;N;DZD;Y;Y;;;Y;EN_OPTIMUM;;;;Optimum Telecom Algeria SPA
EM_MARK_M;Pakistan_M;Y;USD;N;Y;;;N;EN_Pakistan_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Pakistan
Pakistan_M;Mobilink_M;Y;USD;N;Y;;;N;EN_Mobilink_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Mobilink
Mobilink_M;PMCL_M;Y;USD;N;Y;;;N;EN_PMCL_M;HPL1_HPL2;;;Pakistan Mobile Communications Ltd. M Consolidated
PMCL_M;BC;N;PKR;Y;Y;;;Y;EN_BC;;;;Business & Communication Systems (Pvt) Ltd
PMCL_M;LDNPAK;N;PKR;Y;Y;;;Y;EN_LDNPAK;;;;LinkdoNet Pakistan (Private) Limited
PMCL_M;LDNTEL;N;PKR;Y;Y;;;Y;EN_LDNTEL;;;;LinkDotNet Telecom Limited
PMCL_M;PMCL;N;PKR;Y;Y;;;Y;EN_PMCL;;;;Pakistan Mobile Communications Limited
PMCL_M;DEODAR;N;PKR;Y;Y;;;Y;EN_DEODAR;;;;Deodar (Private) Limited
Mobilink_M;WBANK_M;Y;USD;N;Y;;;N;EN_WBANK_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Waseela Microfinance Bank Limited - USD
WBANK_M;WBANK;N;PKR;Y;Y;;;Y;EN_WBANK;HPL1_HPL2;;;Waseela Microfinance Bank Limited
Pakistan_M;WARID_M;Y;USD;N;Y;;;N;EN_WARID_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Warid Telecom (Pvt) Ltd - USD
WARID_M;WARID;N;PKR;Y;Y;;;Y;EN_WARID;HPL1_HPL2;;;Warid Telecom (Pvt) Ltd
EM_MARK_M;Bangladesh_M;Y;USD;N;Y;;;N;EN_Bangladesh_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Bangladesh
Bangladesh_M;BDCL;N;BDT;Y;Y;;;Y;EN_BDCL;;;;Banglalink Digital Communications Limited
EM_MARK_M;VIPLAOS;N;LAK;Y;Y;;;Y;EN_VIPLAOS;HPL1_HPL2;;;VimpelCom Lao Company Limited
EM_MARK_M;EM_Adj;Y;USD;Y;N;;;N;EN_EM_Adj;HPL1_HPL2;;;
Total_Business;EURASIA_M;Y;USD;N;Y;;;N;EN_EURASIA_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;EURASIA
EURASIA_M;HOLDING_CIS_M;Y;USD;N;Y;;;N;EN_HOLDING_CIS_M;;;VIP_MANAGERIAL_USD;Holding CIS
HOLDING_CIS_M;CIS_ADJ;N;USD;Y;Y;;;Y;EN_CIS_ADJ;;;;CIS Consolidation Adjustments
EURASIA_M;Kazakh_M;Y;USD;N;Y;;;N;EN_Kazakh_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Kazakhstan
Kazakh_M;KAZ_OPER_M;Y;USD;N;Y;;;N;EN_KAZ_OPER_M;;;VIP_MANAGERIAL_USD;Total Kazakhstan Operations
KAZ_OPER_M;KARTEL;N;KZT;Y;Y;;;Y;EN_KARTEL;;;;Kar-Tel
KAZ_OPER_M;TETA;N;KZT;Y;Y;;;Y;EN_TETA;;;;TETA Telecom LLP
KAZ_OPER_M;TNSPLUS;N;KZT;Y;Y;;;Y;EN_TNSPLUS;;;;TNS-Plus LLP
KAZ_OPER_M;TNSPLUS_Adj;N;KZT;Y;Y;;;Y;EN_TNSPLUS_Adj;;;;TNS-Plus LLP Adjustments
KAZ_OPER_M;TWODAY;N;KZT;Y;Y;;;Y;EN_TWODAY;;;;2Day Telecom LLP
KAZ_OPER_M;GTIKAZTEL;N;USD;Y;Y;;;Y;EN_GTIKAZTEL;;;;GTI Kaztel Ltd
KAZ_OPER_M;KEM;N;KZT;Y;Y;;;Y;EN_KEM;;;;Kazeuromobile LLP
Kazakh_M;KAZ_OFFSH_M;Y;USD;N;Y;;;N;EN_KAZ_OFFSH_M;;;VIP_MANAGERIAL_USD;Total Kazakhstan Offshore
KAZ_OFFSH_M;WENTHORP;N;USD;Y;Y;;;Y;EN_WENTHORP;;;;Wenthorp Industries Ltd.
KAZ_OFFSH_M;IRING;N;USD;Y;Y;;;Y;EN_IRING;;;;Irington Developments Ltd.
KAZ_OFFSH_M;CLAFDOR;N;USD;Y;Y;;;Y;EN_CLAFDOR;;;;Clafdor Investments Ltd
KAZ_OFFSH_M;COMNIDORHOLD;N;USD;Y;Y;;;Y;EN_COMNIDORHOLD;;;;Comnidor Holdings Ltd
EURASIA_M;CISWOKZ_M;Y;USD;N;Y;;;N;EN_CISWOKZ_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total CIS without Kazakhstan
CISWOKZ_M;LIMNOTEX;N;USD;Y;Y;;;Y;EN_LIMNOTEX;;;;Limnotex Developments Ltd.(Cyprus)
CISWOKZ_M;FREEVALE;N;USD;Y;Y;;;Y;EN_FREEVALE;;;;Freevale Enterprises Inc.
CISWOKZ_M;CISWOKZ_LOC_Adj;N;USD;Y;Y;;;Y;EN_CISWOKZ_LOC_Adj;HPL1;;;CIS without Kazakstan Local Adjustments
CISWOKZ_M;Uzbek_M;Y;USD;N;Y;;;N;EN_Uzbek_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Uzbekistan
Uzbek_M;UNITEL;N;USD;Y;Y;;;Y;EN_UNITEL;;;;Unitel LLC
Uzbek_M;BUZTON;N;USD;Y;Y;;;Y;EN_BUZTON;;;;Joint Venture Buzton Ltd Liability Company
Uzbek_M;UNITEL_UZS;N;UZS;Y;Y;;;Y;EN_UNITEL_UZS;;;;Unitel LLC - Som
Uzbek_M;BUZTON_UZS;N;UZS;Y;Y;;;Y;EN_BUZTON_UZS;;;;Joint Venture Buzton Ltd Liability Company - Som
CISWOKZ_M;OTHER_CIS_M;Y;USD;N;Y;;;N;EN_OTHER_CIS_M;;;VIP_MANAGERIAL_USD;Other CIS Countries
OTHER_CIS_M;Tajiki_M_TOT;Y;USD;N;Y;;;N;EN_Tajiki_M_TOT;HPL1;;VIP_MANAGERIAL_USD;Total Tajikistan
Tajiki_M_TOT;Tajiki_M;Y;USD;N;Y;;;N;EN_Tajiki_M;HPL2;;VIP_MANAGERIAL_USD;Tajikistan without Adjustments
Tajiki_M;TACOM;N;USD;Y;Y;;;Y;EN_TACOM;;;;TACOM LLC
Tajiki_M_TOT;TACOM_Adj;N;USD;Y;Y;;;Y;EN_TACOM_Adj;HPL2;;;TACOM LLC Adjustments
OTHER_CIS_M;Armen_M_TOT;Y;USD;N;Y;;;N;EN_Armen_M_TOT;HPL1;;VIP_MANAGERIAL_USD;Total Armenia
Armen_M_TOT;Armen_M;Y;USD;N;Y;;;N;EN_Armen_M;HPL2;;VIP_MANAGERIAL_USD;Armenia without Adjustments
Armen_M;ARMENTEL;N;AMD;Y;Y;;;Y;EN_ARMENTEL;;;;Armenia Telephone Company
Armen_M;ARMENCELL;N;AMD;Y;Y;;;Y;EN_ARMENCELL;;;;Armencell CJSC
Armen_M_TOT;Armen_Adj;N;USD;Y;Y;;;Y;EN_Armen_Adj;HPL2;;;Armenia Adjustments
OTHER_CIS_M;Kyrgyz_M_TOT;Y;USD;N;Y;;;N;EN_Kyrgyz_M_TOT;HPL1;;VIP_MANAGERIAL_USD;Total Kyrgyzstan
Kyrgyz_M_TOT;Kyrgyz_M;Y;USD;N;Y;;;N;EN_Kyrgyz_M;HPL2;;VIP_MANAGERIAL_USD;Kyrgyzstan without Adjustments
Kyrgyz_M;SKYMOBILE;N;KGS;Y;Y;;;Y;EN_SKYMOBILE;;;;Sky Mobile LLC
Kyrgyz_M_TOT;Kyrgyz_Adj;N;USD;Y;Y;;;Y;EN_Kyrgyz_Adj;HPL2;;;Kyrgyzstan Adjustments
OTHER_CIS_M;Georg_M_TOT;Y;USD;N;Y;;;N;EN_Georg_M_TOT;HPL1;;VIP_MANAGERIAL_USD;Total Georgia
Georg_M_TOT;Georg_M;Y;USD;N;Y;;;N;EN_Georg_M;HPL2;;VIP_MANAGERIAL_USD;Georgia without Adjustments
Georg_M;MOBITEL;N;GEL;Y;Y;;;Y;EN_MOBITEL;;;;Mobitel LLC
Georg_M_TOT;Georg_Adj;N;USD;Y;Y;;;Y;EN_Georg_Adj;HPL2;;;Georgia Adjustments
CISWOKZ_M;CIS_OFFSH;Y;USD;N;Y;;;N;EN_CIS_OFFSH;;;VIP_MANAGERIAL_USD;CIS Offshore companies
CIS_OFFSH;SILKWAY;N;USD;Y;Y;;;Y;EN_SILKWAY;;;;Silkway Holding B.V.
CIS_OFFSH;WATERTRAIL;N;USD;Y;Y;;;Y;EN_WATERTRAIL;;;;Watertrail Industries Ltd.
CIS_OFFSH;MENACREST;N;USD;Y;Y;;;Y;EN_MENACREST;;;;Menacrest Limited (Cyprus)
EURASIA_M;UKR_M;Y;USD;N;Y;;;N;EN_UKR_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Ukraine
UKR_M;UKR_OPER_M;Y;USD;N;Y;;;N;EN_UKR_OPER_M;;;VIP_MANAGERIAL_USD;Total Ukraine operations
UKR_OPER_M;KYIVSTAR;N;UAH;Y;Y;;;Y;EN_KYIVSTAR;;;;Kyivstar
UKR_OPER_M;STARAVTO;N;UAH;Y;Y;;;Y;EN_STARAVTO;;;;Kyivstar GSM Joint Stock Company Subsidiary "Staravto"
UKR_OPER_M;STARMONEY;N;UAH;Y;Y;;;Y;EN_STARMONEY;;;;Kyivstar GSM Joint Stock Company Subsidiary "Starmoney"
UKR_OPER_M;INVESTHOLD;N;UAH;Y;Y;;;Y;EN_INVESTHOLD;;;;Invest-Holding Limited Liability Company
UKR_OPER_M;GTLLC;N;UAH;Y;Y;;;Y;EN_GTLLC;;;;GOLDEN TELECOM Limited Liability Company
UKR_M;UKR_OFFSH_M;Y;USD;N;Y;;;N;EN_UKR_OFFSH_M;;;VIP_MANAGERIAL_USD;Total Ukraine offshore
UKR_OFFSH_M;CELLUKR;N;UAH;Y;Y;;;Y;EN_CELLUKR;;;;CellUkraine Ltd
UKR_OFFSH_M;GTSUKR;N;UAH;Y;Y;;;Y;EN_GTSUKR;;;;GTS Ukrainian TeleSystems L.L.C.
UKR_OFFSH_M;WINTOP;N;UAH;Y;Y;;;Y;EN_WINTOP;;;;Wintop Management Ltd
UKR_OFFSH_M;CELLCROFTHOLD;N;UAH;Y;Y;;;Y;EN_CELLCROFTHOLD;;;;Cellcroft Holdings Ltd
UKR_OFFSH_M;CRADEL;N;UAH;Y;Y;;;Y;EN_CRADEL;;;;Cradel Investments Ltd
UKR_OFFSH_M;CRAYOLA;N;UAH;Y;Y;;;Y;EN_CRAYOLA;;;;Crayola Properties Ltd
UKR_OFFSH_M;CRISDENHOLD;N;UAH;Y;Y;;;Y;EN_CRISDENHOLD;;;;Crisden Holdings Ltd
Total_Business;HQ_M;Y;USD;N;Y;;;N;EN_HQ_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;HQ Management Structures
HQ_M;GTH_CONS_M;Y;USD;N;Y;;;N;EN_GTH_CONS_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;Global Telecom Holding S.A.E. consolidated
GTH_CONS_M;GTH_M;N;USD;N;Y;;;N;EN_GTH_M;HPL1_HPL2;;;Total Global Telecom Holding SAE
GTH_CONS_M;GTH_M_Adj;N;USD;N;Y;;;N;EN_GTH_M_ADJ;;;;Total Global Telecom Holding SAE Adjustments
GTH_CONS_M;OTHER_ASAF_CAIRO_M;Y;USD;N;Y;;;N;EN_OTHER_ASAF_CAIRO_M;HPL1_HPL2;;;Total Holding GTH CAIRO
OTHER_ASAF_CAIRO_M;CAT;N;DZD;Y;Y;;;Y;EN_CAT;;;;Consortium Algerien de Telecommunications S.p.A
OTHER_ASAF_CAIRO_M;CORTEX_EG;N;EGP;Y;Y;;;Y;EN_CORTEX_EG;;;;Cortex for Services and Consultations S.A.E.
OTHER_ASAF_CAIRO_M;TELE_SA;N;CHF;Y;Y;;;Y;EN_TELE_SA;;;;Telecel International Services SA
OTHER_ASAF_CAIRO_M;TIL;N;USD;Y;Y;;;Y;EN_TIL;;;;Telecel International Ltd
OTHER_ASAF_CAIRO_M;MINIMAX;N;USD;Y;Y;;;Y;EN_MINIMAX;;;;Minimax Ventures Limited
OTHER_ASAF_CAIRO_M;OTESOP;N;USD;Y;Y;;;Y;EN_OTESOP;;;;Orascom Telecom Esop Ltd.
OTHER_ASAF_CAIRO_M;OTH_MINV;N;EGP;Y;Y;;;Y;EN_OTH_MINV;;;;Orascom Holding Handset Investment Company
OTHER_ASAF_CAIRO_M;MEDCABLE;N;EUR;Y;Y;;;Y;EN_MEDCABLE;;;;Med Cable Ltd.
OTHER_ASAF_CAIRO_M;ITCL;N;GBP;Y;Y;;;Y;EN_ITCL;;;;International Telecommunication Consortium Ltd.
OTHER_ASAF_CAIRO_M;THCML;N;CAD;Y;Y;;;Y;EN_THCML;;;;Telecom Holding Canada (Malta) Limited
OTHER_ASAF_CAIRO_M;GTH_C;N;CAD;Y;Y;;;Y;EN_GTH_C;;;;GTH Global Telecom Holding (Canada) Limited
GTH_CONS_M;OTHER_ASAF_AMS_M;Y;USD;N;Y;;;N;EN_OTHER_ASAF_AMS_M;HPL1_HPL2;;;Total Holding GTH AMS
OTHER_ASAF_AMS_M;GTHC_BV;N;USD;Y;Y;;;Y;EN_GTHC_BV;;;;GTH Canada B.V.
OTHER_ASAF_AMS_M;GTNBV;N;EUR;Y;Y;;;Y;EN_GTNBV;;;;Global Telecom Netherlands BV
OTHER_ASAF_AMS_M;GTNBVUSD;N;USD;Y;Y;;;Y;EN_GTNBVUSD;;;;Global Telecom Netherlands BV USD
OTHER_ASAF_AMS_M;GTHFBV;N;USD;Y;Y;;;Y;EN_GTHFBV;;;;GTH Finance B.V.
OTHER_ASAF_AMS_M;T_CSL;N;USD;Y;Y;;;Y;EN_T_CSL;;;;Telecom CS Limited
OTHER_ASAF_AMS_M;GTF_BC;N;USD;Y;Y;;;Y;EN_GTF_BC;;;;GTH Global Telecom Finance (B.C.)
OTHER_ASAF_AMS_M;EURASIA;N;USD;Y;Y;;;Y;EN_EURASIA;;;;Orascom Telecom Eurasia Ltd.
OTHER_ASAF_AMS_M;FPPL;N;USD;Y;Y;;;Y;EN_FPPL;;;;Financial Powers Plan Ltd.
OTHER_ASAF_AMS_M;IWCPL_SA;N;USD;Y;Y;;;Y;EN_IWCPL_SA;;;;International Wireless Communications Pakistan Limited
OTHER_ASAF_AMS_M;MOGA;N;USD;Y;Y;;;Y;EN_MOGA;;;;Moga Holding Ltd.
OTHER_ASAF_AMS_M;IHL;N;USD;Y;Y;;;Y;EN_IHL;;;;Iraq Holding Limited
OTHER_ASAF_AMS_M;ORATEL;N;USD;Y;Y;;;Y;EN_ORATEL;;;;Oratel International Inc.
OTHER_ASAF_AMS_M;TICL;N;USD;Y;Y;;;Y;EN_TICL;;;;Telecom Iraq Corp. Limited
OTHER_ASAF_AMS_M;TVL;N;USD;Y;Y;;;Y;EN_TVL;;;;Telecom Ventures Limited
OTHER_ASAF_AMS_M;SAWLTD;N;USD;Y;Y;;;Y;EN_SAWLTD;;;;Sawyer Limited
OTHER_ASAF_AMS_M;TMGL;N;USD;Y;Y;;;Y;EN_TMGL;;;;Telecom Management Group Limited
OTHER_ASAF_AMS_M;DMSLTD;N;USD;Y;Y;;;Y;EN_DMSLTD;;;;Database Management Services Ltd (Maltese Entity)
GTH_CONS_M;RING_M;Y;USD;N;Y;;;N;EN_RING_M;;;VIP_MANAGERIAL_USD;Ring Consolidated
RING_M;MMMS;N;EGP;Y;Y;;;Y;EN_MMMS;;;;Multi Media Mega Stores
RING_M;RING_ALG;N;DZD;Y;Y;;;Y;EN_RING_ALG;;;;Ring Algeria LLC
RING_M;RING_BANG;N;BDT;Y;Y;;;Y;EN_RING_BANG;;;;Ring Distribution (Private) Limited (Ring Bangladesh)
RING_M;RING_DUBAI;N;AED;Y;Y;;;Y;EN_RING_DUBAI;;;;The Phone Company FZO
RING_M;RING_IRAQ;N;USD;Y;Y;;;Y;EN_RING_IRAQ;;;;Ring Iraq
RING_M;RING_PAK;N;PKR;Y;Y;;;Y;EN_RING_PAK;;;;Ring Distribution (Private) Limited (Ring Pakistan)
RING_M;RING_PAKS;N;PKR;Y;Y;;;Y;EN_RING_PAKS;;;;CaRing (Private) Limited (Ring Pakistan Service)
RING_M;RING_EG;N;EGP;Y;Y;;;Y;EN_RING_EG;;;;Ring for Handset Service (CaRing)
RING_M;RING_ALGS;N;DZD;Y;Y;;;Y;EN_RING_ALGS;;;;Ring Maintenance - CARING LLC
RING_M;RING_MAINT;N;EGP;Y;Y;;;Y;EN_RING_MAINT;;;;Ring Distribution SAE
RING_M;RING_RD;N;TND;Y;Y;;;Y;EN_RING_RD;;;;R & D S.a.r.l.
RING_M;RING_AEI;N;USD;Y;Y;;;Y;EN_RING_AEI;;;;Advanced Electronic Industries
HQ_M;OTHER_ASAF_M;Y;USD;N;Y;;;N;EN_OTHER_ASAF_M;;;VIP_MANAGERIAL_USD;Total Holding GTH
OTHER_ASAF_M;OTHER_ASAF_LUX_M;Y;USD;N;Y;;;N;EN_OTHER_ASAF_LUX_M;HPL1_HPL2;;;Total Holding GTH LUX
OTHER_ASAF_LUX_M;GTACQ;N;EUR;Y;Y;;;Y;EN_GTACQ;;;;Global Telecom Acquisition
OTHER_ASAF_LUX_M;GTFSCA;N;USD;Y;Y;;;Y;EN_GTFSCA;;;;Global Telecom Finance SCA
OTHER_ASAF_LUX_M;GTO;N;EUR;Y;Y;;;Y;EN_GTO;;;;Global Telecom One Sarl
OTHER_ASAF_LUX_M;GTSARL;N;USD;Y;Y;;;Y;EN_GTSARL;;;;Global Telecom SARL
OTHER_ASAF_LUX_M;GT_OSCAR;N;USD;Y;Y;;;Y;EN_GT_OSCAR;;;;Global Telecom Oscar
OTHER_ASAF_LUX_M;GLSARL;N;USD;Y;Y;;;Y;EN_GLSARL;;;;Global Luxembourg S.a.r.l.
OTHER_ASAF_LUX_M;GLFSCA;N;USD;Y;Y;;;Y;EN_GLFSCA;;;;Global Luxembourg Finance S.C.A.
HQ_M;CISWOKZ_HQ;N;USD;Y;Y;;;Y;EN_CISWOKZ_HQ;HPL1_HPL2;;;CIS without Kazakstan HQ
HQ_M;HOLDINGS_M;Y;USD;N;Y;;;N;EN_HOLDINGS_M;;;VIP_MANAGERIAL_USD;Total Holdings
HOLDINGS_M;OJSCADJ_M;Y;USD;N;Y;;;N;EN_OJSCADJ_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;OJSC Vimpel adjustment consolidated
OJSCADJ_M;OJSCADJ;N;USD;Y;Y;;;Y;EN_OJSCADJ;;;;OJSC Vimpel adjustment
OJSCADJ_M;OJSCADJ_RUB;N;RUB;Y;Y;;;Y;EN_OJSCADJ_RUB;;;;OJSC Vimpel adjustment RUB
HOLDINGS_M;VIPDIGITALAMS;N;USD;Y;Y;;;Y;EN_VIPDIGITALAMS;;;;VIP Digital Amsterdam BV
HOLDINGS_M;VIPHOLDADJ;N;USD;Y;Y;;;Y;EN_VIPHOLDADJ;;;;VimpelCom Holdings Adjustment
HOLDINGS_M;VIPHQ_ADJ;N;USD;Y;Y;;;Y;EN_VIPHQ_ADJ;;;;VimpelCom HQ Adjustments
HOLDINGS_M;OTSE_NEW;N;EUR;Y;Y;;;Y;EN_OTSE_NEW;;;;Orascom Telecom Service Europe
HOLDINGS_M;GTLVIS_M;Y;USD;Y;Y;;;N;EN_GTLVIS_M;HPL1_HPL2;;;Vimpelcom International Services BU Managerial
GTLVIS_M;VIPINTSERV;N;USD;Y;Y;;;Y;EN_VIPINTSERV;;;;VimpelCom International Services BV
GTLVIS_M;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd
GTLVIS_M;GTLVIS;N;USD;Y;Y;;;Y;EN_GTLVIS;;;;GTL VIS Operations
HOLDINGS_M;HQ_AMS_HOLD;Y;USD;N;Y;;;N;EN_HQ_AMS_HOLD_M;HPL1_HPL2;;;HQ Amsterdam Holdings
HQ_AMS_HOLD;HQ_AMS_HOLD_1_M;Y;USD;N;Y;;;N;EN_HQ_AMS_HOLD_1_M;;;;HQ Amsterdam Holdings 1
HQ_AMS_HOLD_1_M;HQ_AMS_OTHER_M;Y;USD;N;Y;;;N;EN_HQ_AMS_OTHER_M;;;;HQ Amsterdam Other Holdings
HQ_AMS_OTHER_M;INVESTICO;N;USD;Y;Y;;;Y;EN_INVESTICO;;;;Investico Alliance Ltd
HQ_AMS_OTHER_M;VIPAMSFIN;N;USD;Y;Y;;;Y;EN_VIPAMSFIN;;;;VimpelCom Amsterdam Finance BV
HQ_AMS_OTHER_M;VIPBVI;N;USD;Y;Y;;;Y;EN_VIPBVI;;;;VimpelCom BVI AG
HQ_AMS_OTHER_M;VIPGEORGIA;N;USD;Y;Y;;;Y;EN_VIPGEORGIA;;;;VimpelCom Georgia Holdings BV
HQ_AMS_OTHER_M;VIPMICRO;N;USD;Y;Y;;;Y;EN_VIPMICRO;;;;VimpelCom Micro Holdings BV
HQ_AMS_OTHER_M;VIPKYGHOLD;N;USD;Y;Y;;;Y;EN_VIPKYGHOLD;;;;VimpelCom Kyrgyzstan Holding B.V.
HQ_AMS_OTHER_M;VIPKAZHOLD;N;USD;Y;Y;;;Y;EN_VIPKAZHOLD;;;;VimpelCom Kazakhstan Holding B.V.
HQ_AMS_OTHER_M;VIPARMHOLD;N;USD;Y;Y;;;Y;EN_VIPARMHOLD;;;;VimpelCom Armenia Holding B.V.
HQ_AMS_OTHER_M;VIPFBERM;N;USD;Y;Y;;;Y;EN_VIPFBERM;;;;VimpelCom Finance Bermuda
HQ_AMS_OTHER_M;VIPFBV;N;USD;Y;Y;;;Y;EN_VIPFBV;;;;Vimpelcom Finance BV
HQ_AMS_HOLD_1_M;HQ_OJSC_M;Y;USD;N;Y;;;N;EN_HQ_OJSC_M;;;;HQ OJSC
HQ_OJSC_M;VIPBV;N;USD;Y;Y;;;Y;EN_VIPBV;;;;VimpelCom B.V.
HQ_OJSC_M;VIPLAOSHOLD;N;USD;Y;Y;;;Y;EN_VIPLAOSHOLD;;;;VimpelCom Holding Laos B.V.
HQ_AMS_HOLD_1_M;NL_BRANCH_M;Y;USD;N;Y;;;N;EN_NL_BRANCH_M;;;;NL Branch
NL_BRANCH_M;WC_SARL_EUR_B;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR_B;;;;Weather Capital S.a.r.l BRANCH
NL_BRANCH_M;WCSP_USD_B;N;USD;Y;Y;;;Y;EN_WCSP_USD_B;;;;Weather Capital Special Purposes I SA in USD BRANCH
HQ_AMS_HOLD_1_M;VTHBV;N;EUR;Y;Y;;;Y;EN_VTHBV;;;;VTHBV - VimpelCom Telecom Holding BV
HQ_AMS_HOLD;HQ_AMS_HOLD_2_M;Y;USD;N;Y;;;N;EN_HQ_AMS_HOLD_2_M;;;;HQ Amsterdam Holdings 2
HQ_AMS_HOLD_2_M;VIPLTD;N;USD;Y;Y;;;Y;EN_VIPLTD;;;;VimpelCom Ltd
HQ_AMS_HOLD_2_M;VIPAMS;N;USD;Y;Y;;;Y;EN_VIPAMS;;;;VimpelCom Amsterdam BV
HQ_AMS_HOLD_2_M;VIPHOLD;N;USD;Y;Y;;;Y;EN_VIPHOLD;;;;VimpelCom Holdings BV
HQ_AMS_HOLD_2_M;VIPDIGI;N;USD;Y;Y;;;Y;EN_VIPDIGI;;;;VIP Digital Ltd.
HQ_AMS_HOLD_2_M;VCESOP_EUR;N;EUR;Y;Y;;;Y;EN_VCESOP_EUR;;;;VC Esop N.V.
HQ_AMS_HOLD_2_M;VCESOP_USD;N;USD;Y;Y;;;Y;EN_VCESOP_USD;;;;VC Esop N.V. - USD
HOLDINGS_M;VIPGSS_CON_M;Y;USD;N;Y;;;N;EN_VIPGSS_CON_M;HPL1_HPL2;;;VimpelCom GSS B.V. (Consolidated)
VIPGSS_CON_M;VIPGSS;N;USD;Y;Y;;;Y;EN_VIPGSS;;;;VimpelCom GSS B.V.
VIPGSS_CON_M;VIPGSSUKR;N;UAH;Y;Y;;;Y;EN_VIPGSSUKR;;;;VimpelCom Global Services Ukraine LLC
VIPGSS_CON_M;VIPGSSPKR;N;PKR;Y;Y;;;Y;EN_VIPGSSPKR;;;;VimpelCom Global Services Pakistan (Pvt.) Ltd
HOLDINGS_M;HQ_AMS_CYPRUS_M;Y;USD;N;Y;;;N;EN_HQ_AMS_CYPRUS_M;HPL1_HPL2;;;HQ Amsterdam Other Cyrpus
HQ_AMS_CYPRUS_M;VIPCYPHOLD;N;USD;Y;Y;;;Y;EN_VIPCYPHOLD;;;;Vimpelcom Cyprus Holding
HQ_AMS_CYPRUS_M;VIPCYPFIN;N;USD;Y;Y;;;Y;EN_VIPCYPFIN;;;;Vimpelcom Cyprus Finance Ltd
HOLDINGS_M;LUXCO_OTHER_M;Y;USD;N;Y;;;N;EN_LUXCO_OTHER_M;HPL1_HPL2;;;Luxembourg Other
LUXCO_OTHER_M;SALFINSARL;N;USD;Y;Y;;;Y;EN_SALFINSARL;;;;Salsa Finance S.a r.l.
LUXCO_OTHER_M;VIPFIN;N;USD;Y;Y;;;Y;EN_VIPFIN;;;;B.V. VimpelCom Finance S.a r.l.
LUXCO_OTHER_M;VIPKZHOLDAG;N;USD;Y;Y;;;Y;EN_VIPKZHOLDAG;;;;VIP Kazakhstan Holding AG
LUXCO_OTHER_M;VIPLUXHOLDSARL;N;EUR;Y;Y;;;Y;EN_VIPLUXHOLDSARL;;;;VimpelCom Luxembourg Holdings SARL
LUXCO_OTHER_M;VIPKGHOLDAG;N;USD;Y;Y;;;Y;EN_VIPKGHOLDAG;;;;VIP Kyrgyzstan Holding AG
HQ_M;HOLDINGS_ITLUX_M;Y;USD;N;Y;;;N;EN_HOLDINGS_ITLUX_M;;;VIP_MANAGERIAL_USD;HOLDINGS ITALY-LUX
HOLDINGS_ITLUX_M;WT_ADJ;N;EUR;Y;Y;;;Y;EN_WT_ADJ;;;;Wind Telecom Group Adjustments Entity
HOLDINGS_ITLUX_M;IH_Bank_luxco_M;Y;USD;N;Y;;;N;EN_IH_Bank_luxco_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;In-house Bank luxembourg
IH_Bank_luxco_M;WC_SARL_EUR;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR;HPL1_HPL2;;;Weather Capital S.a.r.l
IH_Bank_luxco_M;WCSP_USD;N;USD;Y;Y;;;Y;EN_WCSP_USD;HPL1_HPL2;;;Weather Capital Special Purposes I SA in USD
IH_Bank_luxco_M;WCSP;N;EUR;Y;Y;;;Y;EN_WCSP;;;;WCSP - Weather Capital Special Purposes I SA
IH_Bank_luxco_M;WCSARL;N;EUR;Y;Y;;;Y;EN_WCSARL;;;;WC_SARL - Weather Capital S.a.r.l
HOLDINGS_ITLUX_M;WIND_Italy_Hold_M;Y;USD;N;Y;;;N;EN_WIND_Italy_Hold_M;;;VIP_MANAGERIAL_USD;WIND Italy Holdings
WIND_Italy_Hold_M;WT;N;EUR;Y;Y;;;Y;EN_WT;HPL1_HPL2;;;Wind Telecom S.p.A.
HOLDINGS_ITLUX_M;WAHF_LUXCO_M;Y;USD;N;Y;;;N;EN_WAHF_LUXCO_M;HPL1_HPL2;;VIP_MANAGERIAL_USD;WAHF Luxembourg
WAHF_LUXCO_M;KLAROLUX;N;EUR;Y;Y;;;Y;EN_KLAROLUX;;;;KLAROLUX - Klarolux Investments Sarl
HQ_M;TZIM_M;Y;USD;N;Y;;;N;EN_TZIM_M;;;VIP_MANAGERIAL_USD;Teletel Zimbabwe
TZIM_M;TZIM;N;USD;Y;Y;;;Y;EN_TZIM;;;;Telecel Zimbabwe
HQ_M;CANADA_M;Y;USD;Y;Y;;;N;EN_CANADA_M;;;VIP_MANAGERIAL_USD;Total Canada
HQ_M;SUB_SAHARANAFRICA_M;Y;USD;N;Y;;;N;EN_SUB_SAHARANAFRICA_M;;;VIP_MANAGERIAL_USD;Sub Saharan Africa
SUB_SAHARANAFRICA_M;TCAR;N;XAF;Y;Y;;;Y;EN_TCAR;;;;Telecel Centrafrique S.A.
SUB_SAHARANAFRICA_M;TGLOBE;N;USD;Y;Y;;;Y;EN_TGLOBE;;;;Telecel Globe Limited
SUB_SAHARANAFRICA_M;TUCOM;N;BIF;Y;Y;;;Y;EN_TUCOM;;;;U-Com Burundi S.A.
HQ_M;SOUTHEASTASIA_M;Y;USD;N;Y;;;N;EN_SOUTHEASTASIA_M;;;VIP_MANAGERIAL_USD;South East Asia
SOUTHEASTASIA_M;GTHKH;N;USD;Y;Y;;;Y;EN_GTHKH;;;;GTH CAMBODIA LTD
TOTAL_ENTITY;WC_M;Y;USD;N;Y;;;N;EN_WC_M;;;;Total Weather Capital Entities
WC_M;WC_SARL_M;Y;EUR;N;Y;;;N;EN_WC_SARL_M;;;;Total Weather Capital S.a.r.l.
WC_SARL_M;WC_SARL_EUR;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR;HPL1_HPL2;;;Weather Capital S.a.r.l
WC_SARL_M;WC_SARL_EUR_B;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR_B;;;;Weather Capital S.a.r.l BRANCH
WC_SARL_M;WCSARL;N;EUR;Y;Y;;;Y;EN_WCSARL;;;;WC_SARL - Weather Capital S.a.r.l
WC_M;WCSP_M;Y;USD;N;Y;;;N;EN_WCSP_M;;;;Total Weather Capital Special Purposes 1
WCSP_M;WCSP_USD;N;USD;Y;Y;;;Y;EN_WCSP_USD;HPL1_HPL2;;;Weather Capital Special Purposes I SA in USD
WCSP_M;WCSP_USD_B;N;USD;Y;Y;;;Y;EN_WCSP_USD_B;;;;Weather Capital Special Purposes I SA in USD BRANCH
WCSP_M;WCSP;N;EUR;Y;Y;;;Y;EN_WCSP;;;;WCSP - Weather Capital Special Purposes I SA
TOTAL_ENTITY;OJSC_CON_RUB;Y;RUB;N;Y;;;N;EN_OJSC_CON_RUB;;;;OJSC Consolidation
OJSC_CON_RUB;OJSCADJ;N;USD;Y;Y;;;Y;EN_OJSCADJ;;;;OJSC Vimpel adjustment
OJSC_CON_RUB;OJSCADJ_RUB;N;RUB;Y;Y;;;Y;EN_OJSCADJ_RUB;;;;OJSC Vimpel adjustment RUB
OJSC_CON_RUB;OJSCADJ_LOC_RUB;Y;RUB;Y;Y;;;Y;EN_OJSCADJ_LOC_RUB;;;;OJSC Vimpel adjustment RUB Local
OJSC_CON_RUB;OJSCADJ_LOC;Y;USD;Y;Y;;;Y;EN_OJSCADJ_LOC;;;;OJSC Vimpelcom Local Adjustment
OJSC_CON_RUB;VIPFBV;N;USD;Y;Y;;;Y;EN_VIPFBV;;;;Vimpelcom Finance BV
OJSC_CON_RUB;VIPBV;N;USD;Y;Y;;;Y;EN_VIPBV;;;;VimpelCom B.V.
OJSC_CON_RUB;VIPFIN;N;USD;Y;Y;;;Y;EN_VIPFIN;;;;B.V. VimpelCom Finance S.a r.l.
OJSC_CON_RUB;VIPKZHOLDAG;N;USD;Y;Y;;;Y;EN_VIPKZHOLDAG;;;;VIP Kazakhstan Holding AG
OJSC_CON_RUB;VIPKGHOLDAG;N;USD;Y;Y;;;Y;EN_VIPKGHOLDAG;;;;VIP Kyrgyzstan Holding AG
OJSC_CON_RUB;VIPLAOSHOLD;N;USD;Y;Y;;;Y;EN_VIPLAOSHOLD;;;;VimpelCom Holding Laos B.V.
OJSC_CON_RUB;VIPLAOS;N;LAK;Y;Y;;;Y;EN_VIPLAOS;HPL1_HPL2;;;VimpelCom Lao Company Limited
OJSC_CON_RUB;GTHKH;N;USD;Y;Y;;;Y;EN_GTHKH;;;;GTH CAMBODIA LTD
OJSC_CON_RUB;RUSSIA_CON_RUB;Y;RUB;N;Y;;;N;EN_RUSSIA_CON_RUB;;;;Russia RUB Consolidated
RUSSIA_CON_RUB;OJSCVIP;N;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications
RUSSIA_CON_RUB;OJSCVIP_ICP;N;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications - ICP
RUSSIA_CON_RUB;RUSSIA_HYP_ADJ;N;RUB;Y;Y;;;N;EN_RUSSIA_HYP_ADJ;;;;Vimpelcom Russia adjustments
RUSSIA_CON_RUB;RUSSIA_ADJ;N;RUB;Y;Y;;;Y;EN_RUSSIA_ADJ;;;;Vimpelcom Russia adjustments
RUSSIA_CON_RUB;VIPFINLLC;N;RUB;Y;Y;;;Y;EN_VIPFINLLC;;;;VimpelCom Finance LLC
RUSSIA_CON_RUB;VIPINV;N;RUB;Y;Y;;;Y;EN_VIPINV;;;;VimpelCom Invest
RUSSIA_CON_RUB;BEELINE;N;RUB;Y;Y;;;Y;EN_BEELINE;;;;Beeline Venchures
RUSSIA_CON_RUB;OOOCKN;N;RUB;Y;Y;;;Y;EN_OOOCKN;;;;Investment Consultancy Agency Center of Commercial Real Estate
RUSSIA_CON_RUB;DICOM;N;RUB;Y;Y;;;Y;EN_DICOM;;;;Dicom
RUSSIA_CON_RUB;ALKAR;N;RUB;Y;Y;;;Y;EN_ALKAR;;;;Alkar
RUSSIA_CON_RUB;KOLANGON;N;RUB;Y;Y;;;Y;EN_KOLANGON;;;;KOLANGON OPTIM
RUSSIA_CON_RUB;STM;N;RUB;Y;Y;;;Y;EN_STM;;;;STM_Head_office
RUSSIA_CON_RUB;VCESOP;N;RUB;Y;Y;;;Y;EN_VCESOP;;;;VC Esop N.V.
RUSSIA_CON_RUB;NOUSE;N;RUB;Y;Y;;;Y;EN_NOUSE;;;;Nouse Ltd
RUSSIA_CON_RUB;NATSER;N;RUB;Y;Y;;;Y;EN_NATSER;;;;Closed Joint Stock Company National Service Company""
RUSSIA_CON_RUB;PRUNESCOM;N;RUB;Y;Y;;;Y;EN_PRUNESCOM;;;;Prunescom Ltd
RUSSIA_CON_RUB;ARARIMA;N;RUB;Y;Y;;;Y;EN_ARARIMA;;;;Ararima Enterprises Ltd
RUSSIA_CON_RUB;SOVINTEL;N;RUB;Y;Y;;;Y;EN_SOVINTEL;;;;Sovintel Group
RUSSIA_CON_RUB;ANTEL;N;RUB;Y;Y;;;Y;EN_ANTEL;;;;AnTel Rascom Ltd
RUSSIA_CON_RUB;KUBTELE;N;RUB;Y;Y;;;Y;EN_KUBTELE;;;;Kubtelecom LLC
RUSSIA_CON_RUB;KUBINTER;N;RUB;Y;Y;;;Y;EN_KUBINTER;;;;Kubintersvyaz
RUSSIA_CON_RUB;SATILT;N;RUB;Y;Y;;;Y;EN_SATILT;;;;Satiltsentr
RUSSIA_CON_RUB;SAKHALIN;N;RUB;Y;Y;;;Y;EN_SAKHALIN;;;;Sakhalin Telekom Limited
RUSSIA_CON_RUB;FORTLAND;N;RUB;Y;Y;;;Y;EN_FORTLAND;;;;Fortland Ltd
RUSSIA_CON_RUB;GOLDEN;N;RUB;Y;Y;;;Y;EN_GOLDEN;;;;Golden TeLecom, Inc.
RUSSIA_CON_RUB;SFMTCIS;N;RUB;Y;Y;;;Y;EN_SFMTCIS;;;;SFMT_CIS
RUSSIA_CON_RUB;BARDYM;N;RUB;Y;Y;;;Y;EN_BARDYM;;;;Bardym Enterprises Ltd
RUSSIA_CON_RUB;GOLDENTELGRP;N;RUB;Y;Y;;;Y;EN_GOLDENTELGRP;;;;Golden Telecom Group, Inc.
RUSSIA_CON_RUB;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd
RUSSIA_CON_RUB;GOLDENTELSRV;N;RUB;Y;Y;;;Y;EN_GOLDENTELSRV;;;;Golden Teleservices, Inc.
RUSSIA_CON_RUB;GTSFIN;N;RUB;Y;Y;;;Y;EN_GTSFIN;;;;GTS Finance, Inc.
RUSSIA_CON_RUB;GOLDHOLD;N;RUB;Y;Y;;;Y;EN_GOLDHOLD;;;;Golden Holdings, Inc.
RUSSIA_CON_RUB;CITILINE;N;RUB;Y;Y;;;Y;EN_CITILINE;;;;Citiline
RUSSIA_CON_RUB;AGAMA;N;RUB;Y;Y;;;Y;EN_AGAMA;;;;Agama Ltd
RUSSIA_CON_RUB;RASCOM;N;RUB;Y;Y;;;Y;EN_RASCOM;;;;Rascom
RUSSIA_CON_RUB;SFMTRUS;N;RUB;Y;Y;;;Y;EN_SFMTRUS;;;;SFMT-Rusnet, Inc.
RUSSIA_CON_RUB;VESTBALT;N;RUB;Y;Y;;;Y;EN_VESTBALT;;;;Vestbalt telekom (also CJSC WBT)
RUSSIA_CON_RUB;STHOLD;N;RUB;Y;Y;;;Y;EN_STHOLD;;;;ST-Holding, s.r.o.
RUSSIA_CON_RUB;FIRMESS;N;RUB;Y;Y;;;Y;EN_FIRMESS;;;;Firm Messenger
RUSSIA_CON_RUB;SAMARA;N;RUB;Y;Y;;;Y;EN_SAMARA;;;;Samara Telecom
RUSSIA_CON_RUB;SMARTS_AST;N;RUB;Y;Y;;;Y;EN_SMARTS_AST;;;;SMARTS-Astrakhan
RUSSIA_CON_RUB;SMARTS_SAR;N;RUB;Y;Y;;;Y;EN_SMARTS_SAR;;;;SMARTS-Saratov
RUSSIA_CON_RUB;SMARTS_ELI;N;RUB;Y;Y;;;Y;EN_SMARTS_ELI;;;;SMARTS-Elista
RUSSIA_CON_RUB;ERUS;N;RUB;Y;Y;;;Y;EN_ERUS;;;;EURUS HOLDING B.V. 
RUSSIA_CON_RUB;SIM;N;RUB;Y;Y;;;Y;EN_SIM;;;;LLC SIM TELECOM
RUSSIA_CON_RUB;NTC;N;RUB;Y;Y;;;Y;EN_NTC;;;;National Tower Company
OJSC_CON_RUB;UKR_LEG_CON_RUB;Y;RUB;N;Y;;;N;EN_UKR_LEG_CON_RUB;;;;Ukrain Legal Consolidation
UKR_LEG_CON_RUB;GTSUKR;N;UAH;Y;Y;;;Y;EN_GTSUKR;;;;GTS Ukrainian TeleSystems L.L.C.
UKR_LEG_CON_RUB;CELLUKR;N;UAH;Y;Y;;;Y;EN_CELLUKR;;;;CellUkraine Ltd
UKR_LEG_CON_RUB;INVESTHOLD;N;UAH;Y;Y;;;Y;EN_INVESTHOLD;;;;Invest-Holding Limited Liability Company
UKR_LEG_CON_RUB;GTLLC;N;UAH;Y;Y;;;Y;EN_GTLLC;;;;GOLDEN TELECOM Limited Liability Company
UKR_LEG_CON_RUB;WINTOP;N;UAH;Y;Y;;;Y;EN_WINTOP;;;;Wintop Management Ltd
UKR_LEG_CON_RUB;CELLCROFTHOLD;N;UAH;Y;Y;;;Y;EN_CELLCROFTHOLD;;;;Cellcroft Holdings Ltd
UKR_LEG_CON_RUB;CRADEL;N;UAH;Y;Y;;;Y;EN_CRADEL;;;;Cradel Investments Ltd
UKR_LEG_CON_RUB;CRAYOLA;N;UAH;Y;Y;;;Y;EN_CRAYOLA;;;;Crayola Properties Ltd
UKR_LEG_CON_RUB;CRISDENHOLD;N;UAH;Y;Y;;;Y;EN_CRISDENHOLD;;;;Crisden Holdings Ltd
OJSC_CON_RUB;LIMNOTEX;N;USD;Y;Y;;;Y;EN_LIMNOTEX;;;;Limnotex Developments Ltd.(Cyprus)
OJSC_CON_RUB;FREEVALE;N;USD;Y;Y;;;Y;EN_FREEVALE;;;;Freevale Enterprises Inc.
OJSC_CON_RUB;CIS_ADJ;N;USD;Y;Y;;;Y;EN_CIS_ADJ;;;;CIS Consolidation Adjustments
OJSC_CON_RUB;CISWOKZ_LOC_Adj;N;USD;Y;Y;;;Y;EN_CISWOKZ_LOC_Adj;HPL1;;;CIS without Kazakstan Local Adjustments
OJSC_CON_RUB;Armen_Adj;N;USD;Y;Y;;;Y;EN_Armen_Adj;HPL2;;;Armenia Adjustments
OJSC_CON_RUB;Georg_Adj;N;USD;Y;Y;;;Y;EN_Georg_Adj;HPL2;;;Georgia Adjustments
OJSC_CON_RUB;Kyrgyz_Adj;N;USD;Y;Y;;;Y;EN_Kyrgyz_Adj;HPL2;;;Kyrgyzstan Adjustments
OJSC_CON_RUB;CISWOKZ_HQ;N;USD;Y;Y;;;Y;EN_CISWOKZ_HQ;HPL1_HPL2;;;CIS without Kazakstan HQ
OJSC_CON_RUB;KAZAKH_LEG_CON_RUB;Y;RUB;N;Y;;;N;EN_KAZAKH_LEG_CON_RUB;;;;Kazakhstan Legal Consolidation
KAZAKH_LEG_CON_RUB;KARTEL;N;KZT;Y;Y;;;Y;EN_KARTEL;;;;Kar-Tel
KAZAKH_LEG_CON_RUB;WENTHORP;N;USD;Y;Y;;;Y;EN_WENTHORP;;;;Wenthorp Industries Ltd.
KAZAKH_LEG_CON_RUB;IRING;N;USD;Y;Y;;;Y;EN_IRING;;;;Irington Developments Ltd.
KAZAKH_LEG_CON_RUB;TWODAY;N;KZT;Y;Y;;;Y;EN_TWODAY;;;;2Day Telecom LLP
KAZAKH_LEG_CON_RUB;GTIKAZTEL;N;USD;Y;Y;;;Y;EN_GTIKAZTEL;;;;GTI Kaztel Ltd
KAZAKH_LEG_CON_RUB;CLAFDOR;N;USD;Y;Y;;;Y;EN_CLAFDOR;;;;Clafdor Investments Ltd
KAZAKH_LEG_CON_RUB;COMNIDORHOLD;N;USD;Y;Y;;;Y;EN_COMNIDORHOLD;;;;Comnidor Holdings Ltd
KAZAKH_LEG_CON_RUB;KEM;N;KZT;Y;Y;;;Y;EN_KEM;;;;Kazeuromobile LLP
OJSC_CON_RUB;Uzbek_LEG_CON_RUB;Y;RUB;N;Y;;;N;EN_Uzbek_LEG_CON_RUB;;;;Total Uzbekistan
Uzbek_LEG_CON_RUB;SILKWAY;N;USD;Y;Y;;;Y;EN_SILKWAY;;;;Silkway Holding B.V.
Uzbek_LEG_CON_RUB;UNITEL;N;USD;Y;Y;;;Y;EN_UNITEL;;;;Unitel LLC
Uzbek_LEG_CON_RUB;BUZTON;N;USD;Y;Y;;;Y;EN_BUZTON;;;;Joint Venture Buzton Ltd Liability Company
Uzbek_LEG_CON_RUB;UNITEL_UZS;N;UZS;Y;Y;;;Y;EN_UNITEL_UZS;;;;Unitel LLC - Som
Uzbek_LEG_CON_RUB;BUZTON_UZS;N;UZS;Y;Y;;;Y;EN_BUZTON_UZS;;;;Joint Venture Buzton Ltd Liability Company - Som
OJSC_CON_RUB;Armen_LEG_CON_RUB;Y;RUB;N;Y;;;N;EN_Armen_LEG_CON_RUB;;;;Total Armenia
Armen_LEG_CON_RUB;ARMENTEL;N;AMD;Y;Y;;;Y;EN_ARMENTEL;;;;Armenia Telephone Company
Armen_LEG_CON_RUB;ARMENCELL;N;AMD;Y;Y;;;Y;EN_ARMENCELL;;;;Armencell CJSC
OJSC_CON_RUB;Kyrgyz_LEG_CON_RUB;Y;RUB;N;Y;;;N;EN_Kyrgyz_LEG_CON_RUB;;;;Total Kyrgyzstan
Kyrgyz_LEG_CON_RUB;MENACREST;N;USD;Y;Y;;;Y;EN_MENACREST;;;;Menacrest Limited (Cyprus)
Kyrgyz_LEG_CON_RUB;SKYMOBILE;N;KGS;Y;Y;;;Y;EN_SKYMOBILE;;;;Sky Mobile LLC
OJSC_CON_RUB;Georg_LEG_CON_RUB;Y;RUB;N;Y;;;N;EN_Georg_LEG_CON_RUB;;;;Total Georgia
Georg_LEG_CON_RUB;MOBITEL;N;GEL;Y;Y;;;Y;EN_MOBITEL;;;;Mobitel LLC
Georg_LEG_CON_RUB;WATERTRAIL;N;USD;Y;Y;;;Y;EN_WATERTRAIL;;;;Watertrail Industries Ltd.
TOTAL_ENTITY;OJSC_CON_LOCAL_NEW;Y;USD;N;Y;;;N;EN_OJSC_CON_LOCAL_NEW;;;;OJSC Consolidation Local
OJSC_CON_LOCAL_NEW;OJSCADJ;N;USD;Y;Y;;;Y;EN_OJSCADJ;;;;OJSC Vimpel adjustment
OJSC_CON_LOCAL_NEW;OJSCADJ_RUB;N;RUB;Y;Y;;;Y;EN_OJSCADJ_RUB;;;;OJSC Vimpel adjustment RUB
OJSC_CON_LOCAL_NEW;OJSCADJ_LOC_RUB;N;RUB;Y;Y;;;Y;EN_OJSCADJ_LOC_RUB;;;;OJSC Vimpel adjustment RUB Local
OJSC_CON_LOCAL_NEW;OJSCADJ_LOC;N;USD;Y;Y;;;Y;EN_OJSCADJ_LOC;;;;OJSC Vimpelcom Local Adjustment
OJSC_CON_LOCAL_NEW;VIPFBV;N;USD;Y;Y;;;Y;EN_VIPFBV;;;;Vimpelcom Finance BV
OJSC_CON_LOCAL_NEW;VIPBV;N;USD;Y;Y;;;Y;EN_VIPBV;;;;VimpelCom B.V.
OJSC_CON_LOCAL_NEW;VIPFIN;N;USD;Y;Y;;;Y;EN_VIPFIN;;;;B.V. VimpelCom Finance S.a r.l.
OJSC_CON_LOCAL_NEW;VIPKZHOLDAG;N;USD;Y;Y;;;Y;EN_VIPKZHOLDAG;;;;VIP Kazakhstan Holding AG
OJSC_CON_LOCAL_NEW;VIPKGHOLDAG;N;USD;Y;Y;;;Y;EN_VIPKGHOLDAG;;;;VIP Kyrgyzstan Holding AG
OJSC_CON_LOCAL_NEW;VIPLAOSHOLD;N;USD;Y;Y;;;Y;EN_VIPLAOSHOLD;;;;VimpelCom Holding Laos B.V.
OJSC_CON_LOCAL_NEW;VIPLAOS;N;LAK;Y;Y;;;Y;EN_VIPLAOS;HPL1_HPL2;;;VimpelCom Lao Company Limited
OJSC_CON_LOCAL_NEW;GTHKH;N;USD;Y;Y;;;Y;EN_GTHKH;;;;GTH CAMBODIA LTD
OJSC_CON_LOCAL_NEW;RUSSIA_CON;N;USD;N;Y;;;N;EN_RUSSIA_CON;;;;Russia USD Consolidated
OJSC_CON_LOCAL_NEW;UKR_LEG_CON;N;USD;N;Y;;;N;EN_UKR_LEG_CON;;;;Ukrain Legal Consolidation
OJSC_CON_LOCAL_NEW;LIMNOTEX;N;USD;Y;Y;;;Y;EN_LIMNOTEX;;;;Limnotex Developments Ltd.(Cyprus)
OJSC_CON_LOCAL_NEW;FREEVALE;N;USD;Y;Y;;;Y;EN_FREEVALE;;;;Freevale Enterprises Inc.
OJSC_CON_LOCAL_NEW;CIS_ADJ;N;USD;Y;Y;;;Y;EN_CIS_ADJ;;;;CIS Consolidation Adjustments
OJSC_CON_LOCAL_NEW;CISWOKZ_LOC_Adj;N;USD;Y;Y;;;Y;EN_CISWOKZ_LOC_Adj;HPL1;;;CIS without Kazakstan Local Adjustments
OJSC_CON_LOCAL_NEW;Armen_Adj;N;USD;Y;Y;;;Y;EN_Armen_Adj;HPL2;;;Armenia Adjustments
OJSC_CON_LOCAL_NEW;Georg_Adj;N;USD;Y;Y;;;Y;EN_Georg_Adj;HPL2;;;Georgia Adjustments
OJSC_CON_LOCAL_NEW;Kyrgyz_Adj;N;USD;Y;Y;;;Y;EN_Kyrgyz_Adj;HPL2;;;Kyrgyzstan Adjustments
OJSC_CON_LOCAL_NEW;CISWOKZ_HQ;N;USD;Y;Y;;;Y;EN_CISWOKZ_HQ;HPL1_HPL2;;;CIS without Kazakstan HQ
OJSC_CON_LOCAL_NEW;KAZAKH_LEG_CON;N;USD;N;Y;;;N;EN_KAZAKH_LEG_CON;;;;Kazakhstan Legal Consolidation
OJSC_CON_LOCAL_NEW;Uzbek_LEG_CON;N;USD;N;Y;;;N;EN_Uzbek_LEG_CON;;;;Total Uzbekistan
OJSC_CON_LOCAL_NEW;Armen_LEG_CON;N;USD;N;Y;;;N;EN_Armen_LEG_CON;;;;Total Armenia
OJSC_CON_LOCAL_NEW;Kyrgyz_LEG_CON;N;USD;N;Y;;;N;EN_Kyrgyz_LEG_CON;;;;Total Kyrgyzstan
OJSC_CON_LOCAL_NEW;Georg_LEG_CON_OJSC;Y;USD;N;Y;;;N;EN_Georg_LEG_CON_OJSC;;;;Total Georgia OJSC
Georg_LEG_CON_OJSC;MOBITEL;N;GEL;Y;Y;;;Y;EN_MOBITEL;;;;Mobitel LLC
Georg_LEG_CON_OJSC;WATERTRAIL;N;USD;Y;Y;;;Y;EN_WATERTRAIL;;;;Watertrail Industries Ltd.
TOTAL_ENTITY;PMCL_CON_PKR;Y;PKR;N;Y;;;N;EN_PMCL_CON_PKR;;;;Pakistan Mobile Communications Ltd. PKR Consolidated
PMCL_CON_PKR;BC;N;PKR;Y;Y;;;Y;EN_BC;;;;Business & Communication Systems (Pvt) Ltd
PMCL_CON_PKR;WARID;N;PKR;Y;Y;;;Y;EN_WARID;HPL1_HPL2;;;Warid Telecom (Pvt) Ltd
PMCL_CON_PKR;LDNTEL_CON_PKR;Y;PKR;N;Y;;;N;EN_LDNTEL_CON_PKR;;;;LinkDotNet Telecom Limited
LDNTEL_CON_PKR;LDNPAK;N;PKR;Y;Y;;;Y;EN_LDNPAK;;;;LinkdoNet Pakistan (Private) Limited
LDNTEL_CON_PKR;LDNTEL;N;PKR;Y;Y;;;Y;EN_LDNTEL;;;;LinkDotNet Telecom Limited
PMCL_CON_PKR;PMCL;N;PKR;Y;Y;;;Y;EN_PMCL;;;;Pakistan Mobile Communications Limited
PMCL_CON_PKR;DEODAR;N;PKR;Y;Y;;;Y;EN_DEODAR;;;;Deodar (Private) Limited
TOTAL_ENTITY;VIP_MANAGERIAL_OTHER;Y;USD;N;Y;;;N;EN_VIP_MANAGERIAL_OTHER;HPL1_HPL2;;;VimpelCom Managerial Consolidation in local currency
VIP_MANAGERIAL_OTHER;Italy_Managerial_EUR;Y;EUR;N;Y;;;N;EN_Italy_Managerial_EUR;;;VIP_MANAGERIAL_USD;Italy Managerial in Eur
Italy_Managerial_EUR;ITALY_M_EUR;Y;EUR;N;Y;;;N;EN_ITALY_M_EUR;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Italy in Eur
ITALY_M_EUR;WINDTELCO_ADJ;N;EUR;Y;Y;;;Y;EN_WINDTELCO_ADJ;HPL1_HPL2;;;Wind Telecomunicazioni SpA Adjustments
ITALY_M_EUR;WIND_OPCO_M_EUR;Y;EUR;N;Y;;;N;EN_WIND_OPCO_M_EUR;HPL1_HPL2;;VIP_MANAGERIAL_USD;Wind Italy Operations in Eur
WIND_OPCO_M_EUR;WIND_OPCO_ADJ_BUD;N;EUR;Y;Y;;;Y;EN_WIND_OPCO_ADJ_BUD;;;;Wind Italy Operations Budget Adj
WIND_OPCO_M_EUR;WINDTELCO;N;EUR;Y;Y;;;Y;EN_WINDTELCO;;;;Wind Telecomunicazioni SpA
WIND_OPCO_M_EUR;WINDRETAIL;N;EUR;Y;Y;;;Y;EN_WINDRETAIL;;;;Wind Retail SRL
WIND_OPCO_M_EUR;GALATA;N;EUR;Y;Y;;;Y;EN_GALATA;;;;Galata
ITALY_M_EUR;WAF_LUXCO_M_EUR;Y;EUR;N;Y;;;N;EN_WAF_LUXCO_M_EUR;HPL1_HPL2;;VIP_MANAGERIAL_USD;WAF Luxembourg in Eur
WAF_LUXCO_M_EUR;WINDACQFINII;N;EUR;Y;Y;;;Y;EN_WINDACQFINII;;;;Wind Acquisition Finance II S.A.
WAF_LUXCO_M_EUR;WINDACQFIN;N;EUR;Y;Y;;;Y;EN_WINDACQFIN;;;;Wind Acquisition Finance S.A.
WAF_LUXCO_M_EUR;WINDFIN;N;EUR;Y;Y;;;Y;EN_WINDFIN;;;;Wind Finance SL S.A.
Italy_Managerial_EUR;HOLDINGS_ITLUX_M_EUR;Y;EUR;N;Y;;;N;EN_HOLDINGS_ITLUX_M_EUR;;;VIP_MANAGERIAL_USD;HOLDINGS ITALY-LUX in Eur
HOLDINGS_ITLUX_M_EUR;WINDACQHOLD_ADJ;N;EUR;Y;Y;;;Y;EN_WINDACQHOLD_ADJ;;;;Wind Acquisition Holdings Finance SpA Adjustments
HOLDINGS_ITLUX_M_EUR;WT_ADJ;N;EUR;Y;Y;;;Y;EN_WT_ADJ;;;;Wind Telecom Group Adjustments Entity
HOLDINGS_ITLUX_M_EUR;IH_Bank_luxco_M_EUR;Y;EUR;N;Y;;;N;EN_IH_Bank_luxco_M_EUR;HPL1_HPL2;;VIP_MANAGERIAL_USD;In-house Bank luxembourg in Eur
IH_Bank_luxco_M_EUR;WC_SARL_EUR;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR;HPL1_HPL2;;;Weather Capital S.a.r.l
IH_Bank_luxco_M_EUR;WCSP_USD;N;USD;Y;Y;;;Y;EN_WCSP_USD;HPL1_HPL2;;;Weather Capital Special Purposes I SA in USD
IH_Bank_luxco_M_EUR;WCSP;N;EUR;Y;Y;;;Y;EN_WCSP;;;;WCSP - Weather Capital Special Purposes I SA
IH_Bank_luxco_M_EUR;WCSARL;N;EUR;Y;Y;;;Y;EN_WCSARL;;;;WC_SARL - Weather Capital S.a.r.l
HOLDINGS_ITLUX_M_EUR;WIND_Italy_Hold_M_EUR;Y;EUR;N;Y;;;N;EN_WIND_Italy_Hold_M_EUR;;;VIP_MANAGERIAL_USD;WIND Italy Holdings in Eur
WIND_Italy_Hold_M_EUR;WINDACQHOLD;N;EUR;Y;Y;;;Y;EN_WINDACQHOLD;HPL1_HPL2;;;Wind Acquisition Holdings Finance SpA
WIND_Italy_Hold_M_EUR;WT;N;EUR;Y;Y;;;Y;EN_WT;HPL1_HPL2;;;Wind Telecom S.p.A.
HOLDINGS_ITLUX_M_EUR;WAHF_LUXCO_M_EUR;Y;EUR;N;Y;;;N;EN_WAHF_LUXCO_M_EUR;HPL1_HPL2;;VIP_MANAGERIAL_USD;WAHF Luxembourg in Eur
WAHF_LUXCO_M_EUR;WINDACQHOLDFINII;N;EUR;Y;Y;;;Y;EN_WINDACQHOLDFINII;;;;Wind Acquisition Holdings Finance II SA
WAHF_LUXCO_M_EUR;WINDACQHOLDFIN;N;EUR;Y;Y;;;Y;EN_WINDACQHOLDFIN;;;;Wind Acquisition Holdings Finance SA
WAHF_LUXCO_M_EUR;KLAROLUX;N;EUR;Y;Y;;;Y;EN_KLAROLUX;;;;KLAROLUX - Klarolux Investments Sarl
VIP_MANAGERIAL_OTHER;RUSSIA_M_RUB;Y;RUB;N;Y;;;N;EN_RUSSIA_M_RUB;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Russia in Rub
RUSSIA_M_RUB;NTC;N;RUB;Y;Y;;;Y;EN_NTC;;;;National Tower Company
RUSSIA_M_RUB;RUSSIA_woNTC_M_RUB;Y;RUB;N;Y;;;N;EN_RUSSIA_woNTC_M_RUB;;;VIP_MANAGERIAL_USD;Total Russia in Rub (Legal Point of View)
RUSSIA_woNTC_M_RUB;OJSCVIP;N;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications
RUSSIA_woNTC_M_RUB;OJSCVIP_ICP;N;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications - ICP
RUSSIA_woNTC_M_RUB;RUSSIA_HYP_ADJ;N;RUB;Y;Y;;;Y;EN_RUSSIA_HYP_ADJ;;;;Vimpelcom Russia Hyperion adjustments
RUSSIA_woNTC_M_RUB;RUSSIA_ADJ;N;RUB;Y;Y;;;Y;EN_RUSSIA_ADJ;;;;Vimpelcom Russia adjustments
RUSSIA_woNTC_M_RUB;VIPFINLLC;N;RUB;Y;Y;;;Y;EN_VIPFINLLC;;;;VimpelCom Finance LLC
RUSSIA_woNTC_M_RUB;VIPINV;N;RUB;Y;Y;;;Y;EN_VIPINV;;;;VimpelCom Invest
RUSSIA_woNTC_M_RUB;BEELINE;N;RUB;Y;Y;;;Y;EN_BEELINE;;;;Beeline Venchures
RUSSIA_woNTC_M_RUB;OOOCKN;N;RUB;Y;Y;;;Y;EN_OOOCKN;;;;Investment Consultancy Agency Center of Commercial Real Estate
RUSSIA_woNTC_M_RUB;DICOM;N;RUB;Y;Y;;;Y;EN_DICOM;;;;Dicom
RUSSIA_woNTC_M_RUB;ALKAR;N;RUB;Y;Y;;;Y;EN_ALKAR;;;;Alkar
RUSSIA_woNTC_M_RUB;KOLANGON;N;RUB;Y;Y;;;Y;EN_KOLANGON;;;;KOLANGON OPTIM
RUSSIA_woNTC_M_RUB;STM;N;RUB;Y;Y;;;Y;EN_STM;;;;STM_Head_office
RUSSIA_woNTC_M_RUB;VCESOP;N;RUB;Y;Y;;;Y;EN_VCESOP;;;;VC Esop N.V.
RUSSIA_woNTC_M_RUB;NOUSE;N;RUB;Y;Y;;;Y;EN_NOUSE;;;;Nouse Ltd
RUSSIA_woNTC_M_RUB;NATSER;N;RUB;Y;Y;;;Y;EN_NATSER;;;;Closed Joint Stock Company National Service Company""
RUSSIA_woNTC_M_RUB;PRUNESCOM;N;RUB;Y;Y;;;Y;EN_PRUNESCOM;;;;Prunescom Ltd
RUSSIA_woNTC_M_RUB;ARARIMA;N;RUB;Y;Y;;;Y;EN_ARARIMA;;;;Ararima Enterprises Ltd
RUSSIA_woNTC_M_RUB;SOVINTEL;N;RUB;Y;Y;;;Y;EN_SOVINTEL;;;;Sovintel Group
RUSSIA_woNTC_M_RUB;ANTEL;N;RUB;Y;Y;;;Y;EN_ANTEL;;;;AnTel Rascom Ltd
RUSSIA_woNTC_M_RUB;KUBTELE;N;RUB;Y;Y;;;Y;EN_KUBTELE;;;;Kubtelecom LLC
RUSSIA_woNTC_M_RUB;KUBINTER;N;RUB;Y;Y;;;Y;EN_KUBINTER;;;;Kubintersvyaz
RUSSIA_woNTC_M_RUB;SATILT;N;RUB;Y;Y;;;Y;EN_SATILT;;;;Satiltsentr
RUSSIA_woNTC_M_RUB;SAKHALIN;N;RUB;Y;Y;;;Y;EN_SAKHALIN;;;;Sakhalin Telekom Limited
RUSSIA_woNTC_M_RUB;FORTLAND;N;RUB;Y;Y;;;Y;EN_FORTLAND;;;;Fortland Ltd
RUSSIA_woNTC_M_RUB;GOLDEN;N;RUB;Y;Y;;;Y;EN_GOLDEN;;;;Golden TeLecom, Inc.
RUSSIA_woNTC_M_RUB;SFMTCIS;N;RUB;Y;Y;;;Y;EN_SFMTCIS;;;;SFMT_CIS
RUSSIA_woNTC_M_RUB;BARDYM;N;RUB;Y;Y;;;Y;EN_BARDYM;;;;Bardym Enterprises Ltd
RUSSIA_woNTC_M_RUB;GOLDENTELGRP;N;RUB;Y;Y;;;Y;EN_GOLDENTELGRP;;;;Golden Telecom Group, Inc.
RUSSIA_woNTC_M_RUB;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd
RUSSIA_woNTC_M_RUB;GOLDENTELSRV;N;RUB;Y;Y;;;Y;EN_GOLDENTELSRV;;;;Golden Teleservices, Inc.
RUSSIA_woNTC_M_RUB;GTSFIN;N;RUB;Y;Y;;;Y;EN_GTSFIN;;;;GTS Finance, Inc.
RUSSIA_woNTC_M_RUB;GOLDHOLD;N;RUB;Y;Y;;;Y;EN_GOLDHOLD;;;;Golden Holdings, Inc.
RUSSIA_woNTC_M_RUB;CITILINE;N;RUB;Y;Y;;;Y;EN_CITILINE;;;;Citiline
RUSSIA_woNTC_M_RUB;AGAMA;N;RUB;Y;Y;;;Y;EN_AGAMA;;;;Agama Ltd
RUSSIA_woNTC_M_RUB;RASCOM;N;RUB;Y;Y;;;Y;EN_RASCOM;;;;Rascom
RUSSIA_woNTC_M_RUB;SFMTRUS;N;RUB;Y;Y;;;Y;EN_SFMTRUS;;;;SFMT-Rusnet, Inc.
RUSSIA_woNTC_M_RUB;VESTBALT;N;RUB;Y;Y;;;Y;EN_VESTBALT;;;;Vestbalt telekom (also CJSC WBT)
RUSSIA_woNTC_M_RUB;STHOLD;N;RUB;Y;Y;;;Y;EN_STHOLD;;;;ST-Holding, s.r.o.
RUSSIA_woNTC_M_RUB;FIRMESS;N;RUB;Y;Y;;;Y;EN_FIRMESS;;;;Firm Messenger
RUSSIA_woNTC_M_RUB;SAMARA;N;RUB;Y;Y;;;Y;EN_SAMARA;;;;Samara Telecom
RUSSIA_woNTC_M_RUB;SMARTS_AST;N;RUB;Y;Y;;;Y;EN_SMARTS_AST;;;;SMARTS-Astrakhan
RUSSIA_woNTC_M_RUB;SMARTS_SAR;N;RUB;Y;Y;;;Y;EN_SMARTS_SAR;;;;SMARTS-Saratov
RUSSIA_woNTC_M_RUB;SMARTS_ELI;N;RUB;Y;Y;;;Y;EN_SMARTS_ELI;;;;SMARTS-Elista
RUSSIA_woNTC_M_RUB;ERUS;N;RUB;Y;Y;;;Y;EN_ERUS;;;;EURUS HOLDING B.V. 
RUSSIA_woNTC_M_RUB;SIM;N;RUB;Y;Y;;;Y;EN_SIM;;;;LLC SIM TELECOM
VIP_MANAGERIAL_OTHER;UKR_M_UAH;Y;UAH;N;Y;;;N;EN_UKR_M_UAH;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Ukraine in Uah
UKR_M_UAH;UKR_OPER_M_UAH;Y;UAH;N;Y;;;N;EN_UKR_OPER_M_UAH;;;VIP_MANAGERIAL_USD;Total Ukraine operations in Uah
UKR_OPER_M_UAH;KYIVSTAR;N;UAH;Y;Y;;;Y;EN_KYIVSTAR;;;;Kyivstar
UKR_OPER_M_UAH;STARAVTO;N;UAH;Y;Y;;;Y;EN_STARAVTO;;;;Kyivstar GSM Joint Stock Company Subsidiary "Staravto"
UKR_OPER_M_UAH;STARMONEY;N;UAH;Y;Y;;;Y;EN_STARMONEY;;;;Kyivstar GSM Joint Stock Company Subsidiary "Starmoney"
UKR_OPER_M_UAH;INVESTHOLD;N;UAH;Y;Y;;;Y;EN_INVESTHOLD;;;;Invest-Holding Limited Liability Company
UKR_OPER_M_UAH;GTLLC;N;UAH;Y;Y;;;Y;EN_GTLLC;;;;GOLDEN TELECOM Limited Liability Company
UKR_M_UAH;UKR_OFFSH_M_UAH;Y;UAH;N;Y;;;N;EN_UKR_OFFSH_M_UAH;;;VIP_MANAGERIAL_USD;Total Ukraine offshore in Uah
UKR_OFFSH_M_UAH;CELLUKR;N;UAH;Y;Y;;;Y;EN_CELLUKR;;;;CellUkraine Ltd
UKR_OFFSH_M_UAH;GTSUKR;N;UAH;Y;Y;;;Y;EN_GTSUKR;;;;GTS Ukrainian TeleSystems L.L.C.
UKR_OFFSH_M_UAH;WINTOP;N;UAH;Y;Y;;;Y;EN_WINTOP;;;;Wintop Management Ltd
UKR_OFFSH_M_UAH;CELLCROFTHOLD;N;UAH;Y;Y;;;Y;EN_CELLCROFTHOLD;;;;Cellcroft Holdings Ltd
UKR_OFFSH_M_UAH;CRADEL;N;UAH;Y;Y;;;Y;EN_CRADEL;;;;Cradel Investments Ltd
UKR_OFFSH_M_UAH;CRAYOLA;N;UAH;Y;Y;;;Y;EN_CRAYOLA;;;;Crayola Properties Ltd
UKR_OFFSH_M_UAH;CRISDENHOLD;N;UAH;Y;Y;;;Y;EN_CRISDENHOLD;;;;Crisden Holdings Ltd
VIP_MANAGERIAL_OTHER;Algeria_M_DZD;Y;DZD;N;Y;;;N;EN_Algeria_M_DZD;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Algeria in Dzd
Algeria_M_DZD;OTA;N;DZD;Y;Y;;;Y;EN_OTA;;;;Orascom Telecom Algerie SPA
Algeria_M_DZD;OPTIMUM;N;DZD;Y;Y;;;Y;EN_OPTIMUM;;;;Optimum Telecom Algeria SPA
VIP_MANAGERIAL_OTHER;Pakistan_M_PKR;Y;PKR;N;Y;;;N;EN_Pakistan_M_PKR;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Pakistan in Pkr
Pakistan_M_PKR;Mobilink_M_PKR;Y;PKR;N;Y;;;N;EN_Mobilink_M_PKR;HPL1_HPL2;;VIP_MANAGERIAL_USD;Mobilink in Pkr
Mobilink_M_PKR;PMCL_M_PKR;Y;PKR;N;Y;;;N;EN_PMCL_M_PKR;HPL1_HPL2;;;Pakistan Mobile Communications Ltd. M_PKR Consolidated
PMCL_M_PKR;BC;N;PKR;Y;Y;;;Y;EN_BC;;;;Business & Communication Systems (Pvt) Ltd
PMCL_M_PKR;LDNPAK;N;PKR;Y;Y;;;Y;EN_LDNPAK;;;;LinkdoNet Pakistan (Private) Limited
PMCL_M_PKR;LDNTEL;N;PKR;Y;Y;;;Y;EN_LDNTEL;;;;LinkDotNet Telecom Limited
PMCL_M_PKR;PMCL;N;PKR;Y;Y;;;Y;EN_PMCL;;;;Pakistan Mobile Communications Limited
PMCL_M_PKR;DEODAR;N;PKR;Y;Y;;;Y;EN_DEODAR;;;;Deodar (Private) Limited
Mobilink_M_PKR;WBANK;N;PKR;Y;Y;;;Y;EN_WBANK;HPL1_HPL2;;;Waseela Microfinance Bank Limited
Pakistan_M_PKR;WARID;N;PKR;Y;Y;;;Y;EN_WARID;HPL1_HPL2;;;Warid Telecom (Pvt) Ltd
VIP_MANAGERIAL_OTHER;Bangladesh_M_BDT;Y;BDT;N;Y;;;N;EN_Bangladesh_M_BDT;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Bangladesh in Bdt
Bangladesh_M_BDT;BDCL;N;BDT;Y;Y;;;Y;EN_BDCL;;;;Banglalink Digital Communications Limited
VIP_MANAGERIAL_OTHER;Kazakh_M_KZT;Y;KZT;N;Y;;;N;EN_Kazakh_M_KZT;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Kazakhstan in Kzt
Kazakh_M_KZT;KAZ_OPER_M_KZT;Y;KZT;N;Y;;;N;EN_KAZ_OPER_M_KZT;;;VIP_MANAGERIAL_USD;Total Kazakhstan Operations in Kzt
KAZ_OPER_M_KZT;KARTEL;N;KZT;Y;Y;;;Y;EN_KARTEL;;;;Kar-Tel
KAZ_OPER_M_KZT;TETA;N;KZT;Y;Y;;;Y;EN_TETA;;;;TETA Telecom LLP
KAZ_OPER_M_KZT;TNSPLUS;N;KZT;Y;Y;;;Y;EN_TNSPLUS;;;;TNS-Plus LLP
KAZ_OPER_M_KZT;TNSPLUS_Adj;N;KZT;Y;Y;;;Y;EN_TNSPLUS_Adj;;;;TNS-Plus LLP Adjustments
KAZ_OPER_M_KZT;TWODAY;N;KZT;Y;Y;;;Y;EN_TWODAY;;;;2Day Telecom LLP
KAZ_OPER_M_KZT;GTIKAZTEL;N;USD;Y;Y;;;Y;EN_GTIKAZTEL;;;;GTI Kaztel Ltd
KAZ_OPER_M_KZT;KEM;N;KZT;Y;Y;;;Y;EN_KEM;;;;Kazeuromobile LLP
Kazakh_M_KZT;KAZ_OFFSH_M_KZT;Y;KZT;N;Y;;;N;EN_KAZ_OFFSH_M_KZT;;;VIP_MANAGERIAL_USD;Total Kazakhstan Offshore in Kzt
KAZ_OFFSH_M_KZT;WENTHORP;N;USD;Y;Y;;;Y;EN_WENTHORP;;;;Wenthorp Industries Ltd.
KAZ_OFFSH_M_KZT;IRING;N;USD;Y;Y;;;Y;EN_IRING;;;;Irington Developments Ltd.
KAZ_OFFSH_M_KZT;CLAFDOR;N;USD;Y;Y;;;Y;EN_CLAFDOR;;;;Clafdor Investments Ltd
KAZ_OFFSH_M_KZT;COMNIDORHOLD;N;USD;Y;Y;;;Y;EN_COMNIDORHOLD;;;;Comnidor Holdings Ltd
VIP_MANAGERIAL_OTHER;Uzbek_M_UZS;Y;UZS;N;Y;;;N;EN_Uzbek_M_UZS;HPL1_HPL2;;VIP_MANAGERIAL_USD;Total Uzbekistan - Som
Uzbek_M_UZS;UNITEL_UZS;N;UZS;Y;Y;;;Y;EN_UNITEL_UZS;;;;Unitel LLC - Som
Uzbek_M_UZS;BUZTON_UZS;N;UZS;Y;Y;;;Y;EN_BUZTON_UZS;;;;Joint Venture Buzton Ltd Liability Company - Som
VIP_MANAGERIAL_OTHER;Tajiki_M_TOT;N;USD;N;Y;;;N;EN_Tajiki_M_TOT;HPL1;;VIP_MANAGERIAL_USD;Total Tajikistan
VIP_MANAGERIAL_OTHER;Armen_M_AMD_TOT;Y;AMD;N;Y;;;N;EN_Armen_M_AMD_TOT;HPL1;;VIP_MANAGERIAL_USD;Total Armenia in Amd
Armen_M_AMD_TOT;Armen_M_AMD;Y;AMD;N;Y;;;N;EN_Armen_M_AMD;HPL2;;VIP_MANAGERIAL_USD;Armenia in Amd without Adjustments
Armen_M_AMD;ARMENTEL;N;AMD;Y;Y;;;Y;EN_ARMENTEL;;;;Armenia Telephone Company
Armen_M_AMD;ARMENCELL;N;AMD;Y;Y;;;Y;EN_ARMENCELL;;;;Armencell CJSC
Armen_M_AMD_TOT;Armen_Adj;N;USD;Y;Y;;;Y;EN_Armen_Adj;HPL2;;;Armenia Adjustments
VIP_MANAGERIAL_OTHER;Kyrgyz_M_KGS_TOT;Y;KGS;N;Y;;;N;EN_Kyrgyz_M_KGS_TOT;HPL1;;VIP_MANAGERIAL_USD;Total Kyrgyzstan in Kgs
Kyrgyz_M_KGS_TOT;Kyrgyz_M_KGS;Y;KGS;N;Y;;;N;EN_Kyrgyz_M_KGS;HPL2;;VIP_MANAGERIAL_USD;Kyrgyzstan in Kgs without Adjustments
Kyrgyz_M_KGS;SKYMOBILE;N;KGS;Y;Y;;;Y;EN_SKYMOBILE;;;;Sky Mobile LLC
Kyrgyz_M_KGS_TOT;Kyrgyz_Adj;N;USD;Y;Y;;;Y;EN_Kyrgyz_Adj;HPL2;;;Kyrgyzstan Adjustments
VIP_MANAGERIAL_OTHER;Georg_M_GEL_TOT;Y;GEL;N;Y;;;N;EN_Georg_M_GEL_TOT;HPL1;;VIP_MANAGERIAL_USD;Total Georgia in Gel
Georg_M_GEL_TOT;Georg_M_GEL;Y;GEL;N;Y;;;N;EN_Georg_M_GEL;HPL2;;VIP_MANAGERIAL_USD;Georgia in Gel without Adjustments
Georg_M_GEL;MOBITEL;N;GEL;Y;Y;;;Y;EN_MOBITEL;;;;Mobitel LLC
Georg_M_GEL_TOT;Georg_Adj;N;USD;Y;Y;;;Y;EN_Georg_Adj;HPL2;;;Georgia Adjustments
VIP_MANAGERIAL_OTHER;VIPLAOS_M;Y;USD;N;Y;;;N;EN_VIPLAOS_M;HPL1_HPL2;;;VimpelCom Lao Company Limited - USD
VIPLAOS_M;VIPLAOS;N;LAK;Y;Y;;;Y;EN_VIPLAOS;HPL1_HPL2;;;VimpelCom Lao Company Limited
VIP_MANAGERIAL_OTHER;GTH_M;N;USD;N;Y;;;N;EN_GTH_M;HPL1_HPL2;;;Total Global Telecom Holding SAE
VIP_MANAGERIAL_OTHER;WC_SARL_EUR_M;Y;USD;N;Y;;;N;EN_WC_SARL_EUR_M;HPL1_HPL2;;;Weather Capital S.a.r.l - USD
WC_SARL_EUR_M;WC_SARL_EUR;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR;HPL1_HPL2;;;Weather Capital S.a.r.l
VIP_MANAGERIAL_OTHER;WT_M;Y;USD;N;Y;;;N;EN_WT_M;HPL1_HPL2;;;Wind Telecom S.p.A. - USD
WT_M;WT;N;EUR;Y;Y;;;Y;EN_WT;HPL1_HPL2;;;Wind Telecom S.p.A.
VIP_MANAGERIAL_OTHER;WINDACQHOLD_M;Y;USD;N;Y;;;N;EN_WINDACQHOLD_M;HPL1_HPL2;;;Wind Acquisition Holdings Finance SpA - USD
WINDACQHOLD_M;WINDACQHOLD;N;EUR;Y;Y;;;Y;EN_WINDACQHOLD;HPL1_HPL2;;;Wind Acquisition Holdings Finance SpA
VIP_MANAGERIAL_OTHER;WINDTELCO_ADJ_M;Y;USD;N;Y;;;N;EN_WINDTELCO_ADJ_M;HPL1_HPL2;;;Wind Telecomunicazioni SpA Adjustments - USD
WINDTELCO_ADJ_M;WINDTELCO_ADJ;N;EUR;Y;Y;;;Y;EN_WINDTELCO_ADJ;HPL1_HPL2;;;Wind Telecomunicazioni SpA Adjustments
TOTAL_ENTITY;VIP_TAX;Y;USD;N;Y;;;N;EN_VIP_TAX;;;;VimpelCom Tax Consolidated
VIP_TAX;VIP_T;Y;USD;N;Y;;;N;EN_VIP_T;;;;VimpelCom Tax Consolidated
VIP_T;VIPHQ_TAX_ADJ;Y;USD;Y;N;;;Y;EN_VIPHQ_TAX_ADJ;;;;VimpelCom HQ Tax Adjustments
VIP_T;VIPHQ_ADJ;N;USD;Y;Y;;;Y;EN_VIPHQ_ADJ;;;;VimpelCom HQ Adjustments
VIP_T;OJSCADJ;N;USD;Y;Y;;;Y;EN_OJSCADJ;;;;OJSC Vimpel adjustment
VIP_T;OJSCADJ_RUB;N;RUB;Y;Y;;;Y;EN_OJSCADJ_RUB;;;;OJSC Vimpel adjustment RUB
VIP_T;INVESTICO;N;USD;Y;Y;;;Y;EN_INVESTICO;;;;Investico Alliance Ltd
VIP_T;VIPHOLDADJ;N;USD;Y;Y;;;Y;EN_VIPHOLDADJ;;;;VimpelCom Holdings Adjustment
VIP_T;VIP_NL_T;Y;USD;N;Y;;;N;EN_VIP_NL_T;;;;Vip Group NL Tax Consolidated
VIP_NL_T;VIPNL_TAX_ADJ;Y;USD;Y;N;;;Y;EN_VIPNL_TAX_ADJ;;;;Vip Group NL Tax Adjustment
VIP_NL_T;VIPLTD;N;USD;Y;Y;;;Y;EN_VIPLTD;;;;VimpelCom Ltd
VIP_NL_T;VIPAMSFIN;N;USD;Y;Y;;;Y;EN_VIPAMSFIN;;;;VimpelCom Amsterdam Finance BV
VIP_NL_T;VIPDIGI;N;USD;Y;Y;;;Y;EN_VIPDIGI;;;;VIP Digital Ltd.
VIP_NL_T;VIPFU_CYP_T;Y;USD;N;Y;;;N;EN_VIPFU_CYP_T;;T_PARENT;;Vimpelcom Fiscal Unity Cyprus Tax Consolidated
VIPFU_CYP_T;VIPFU_CYP_TAX;Y;USD;Y;N;;;Y;EN_VIPFU_CYP_TAX;;T_VIPFU_CYP_T;;Vimpelcom Fiscal Unity Cyprus Tax
VIPFU_CYP_T;VIPCYPHOLD;N;USD;Y;Y;;;Y;EN_VIPCYPHOLD;;;;Vimpelcom Cyprus Holding
VIPFU_CYP_T;VIPCYPFIN;N;USD;Y;Y;;;Y;EN_VIPCYPFIN;;;;Vimpelcom Cyprus Finance Ltd
VIP_NL_T;VIPLUXHOLDSARL;N;EUR;Y;Y;;;Y;EN_VIPLUXHOLDSARL;;;;VimpelCom Luxembourg Holdings SARL
VIP_NL_T;VIPFU_AMS_T;Y;USD;N;Y;;;N;EN_VIPFU_AMS_T;;T_PARENT;;Vimpelcom Fiscal Unity Amsterdam Tax Consolidated
VIPFU_AMS_T;VIPFU_AMS_TAX;Y;USD;Y;N;;;Y;EN_VIPFU_AMS_TAX;;T_VIPFU_AMS_T_2013;;Vimpelcom Fiscal Unity Amsterdam Tax
VIPFU_AMS_T;VIPFU_AMS_INTSERV_T;Y;USD;N;Y;;;N;EN_VIPFU_AMS_INTSERV_T;;T_PARENT_2013;;Vimpelcom Fiscal Unity Amsterdam Tax Consolidated
VIPFU_AMS_INTSERV_T;VIPFU_AMS_INTSERV_TAX;Y;USD;Y;N;;;Y;EN_VIPFU_AMS_INTSERV_TAX;;T_VIPFU_AMS_INTSERV_T;;Vimpelcom Fiscal Unity Amsterdam / Int. Services Tax
VIPFU_AMS_INTSERV_T;VIPAMS;N;USD;Y;Y;;;Y;EN_VIPAMS;;;;VimpelCom Amsterdam BV
VIPFU_AMS_INTSERV_T;VCESOP_EUR;N;EUR;Y;Y;;;Y;EN_VCESOP_EUR;;;;VC Esop N.V.
VIPFU_AMS_INTSERV_T;VCESOP_USD;N;USD;Y;Y;;;Y;EN_VCESOP_USD;;;;VC Esop N.V. - USD
VIPFU_AMS_INTSERV_T;GTLVIS_T;Y;USD;Y;Y;;;N;EN_GTLVIS_T;;;;Vimpelcom International Services BU Tax
GTLVIS_T;VIPINTSERV;N;USD;Y;Y;;;Y;EN_VIPINTSERV;;;;VimpelCom International Services BV
GTLVIS_T;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd
GTLVIS_T;GTLVIS;N;USD;Y;Y;;;Y;EN_GTLVIS;;;;GTL VIS Operations
VIPFU_AMS_T;VIPFU_HOLD_T;Y;USD;N;Y;;;N;EN_VIPFU_HOLD_T;;;;Vimpelcom Fiscal Unity Amsterdam Tax Consolidated
VIPFU_HOLD_T;VIPFU_HOLD_TAX_ADJ;Y;USD;Y;N;;;Y;EN_VIPFU_HOLD_TAX_ADJ;;;;Vimpelcom Fiscal Unity Amsterdam Tax Adjustment
VIPFU_HOLD_T;VIPFU_HOLDINGS_T;Y;USD;N;Y;;;N;EN_VIPFU_HOLDINGS_T;;T_PARENT_2013;;Vimpelcom Fiscal Unity Amsterdam Tax Cons excl. Adj.
VIPFU_HOLDINGS_T;VIPFU_HOLDINGS_TAX;Y;USD;Y;N;;;Y;EN_VIPFU_HOLDINGS_TAX;;T_VIPFU_HOLDINGS_T;;Vimpelcom Fiscal Unity Holdings Tax
VIPFU_HOLDINGS_T;VIPGEORGIA;N;USD;Y;Y;;;Y;EN_VIPGEORGIA;;;;VimpelCom Georgia Holdings BV
VIPFU_HOLDINGS_T;VIPHOLD;N;USD;Y;Y;;;Y;EN_VIPHOLD;;;;VimpelCom Holdings BV
VIPFU_HOLDINGS_T;VIPMICRO;N;USD;Y;Y;;;Y;EN_VIPMICRO;;;;VimpelCom Micro Holdings BV
VIPFU_HOLDINGS_T;VIPKYGHOLD;N;USD;Y;Y;;;Y;EN_VIPKYGHOLD;;;;VimpelCom Kyrgyzstan Holding B.V.
VIPFU_HOLDINGS_T;VIPKAZHOLD;N;USD;Y;Y;;;Y;EN_VIPKAZHOLD;;;;VimpelCom Kazakhstan Holding B.V.
VIPFU_HOLDINGS_T;VIPARMHOLD;N;USD;Y;Y;;;Y;EN_VIPARMHOLD;;;;VimpelCom Armenia Holding B.V.
VIPFU_HOLDINGS_T;VIPDIGITALAMS;N;USD;Y;Y;;;Y;EN_VIPDIGITALAMS;;;;VIP Digital Amsterdam BV
VIP_NL_T;VIPGSS;N;USD;Y;Y;;;Y;EN_VIPGSS;;;;VimpelCom GSS B.V.
VIP_NL_T;VIPGSSUKR;N;UAH;Y;Y;;;Y;EN_VIPGSSUKR;;;;VimpelCom Global Services Ukraine LLC
VIP_NL_T;VIPGSSPKR;N;PKR;Y;Y;;;Y;EN_VIPGSSPKR;;;;VimpelCom Global Services Pakistan (Pvt.) Ltd
VIP_NL_T;VIPGROUP_NL_T;Y;USD;N;Y;;;N;EN_VIPGROUP_NL_T;;T_PARENT;;VIP Group NL Tax Consolidated
VIPGROUP_NL_T;VIPGROUP_NL_TAX;Y;USD;Y;N;;;Y;EN_VIPGROUP_NL_TAX;;T_VIPGROUP_NL_T_2013;;VIP Group NL Tax
VIPGROUP_NL_T;VIPBVI_T;Y;USD;N;Y;;;N;EN_VIPBVI_T;;T_PARENT_2013;;VIP BVI AG Consolidated
VIPBVI_T;VIPBVI_TAX;Y;USD;Y;N;;;Y;EN_VIPBVI_TAX;;T_VIPBVI_T;;VIP BVI AG Tax
VIPBVI_T;VIPBVI;N;USD;Y;Y;;;Y;EN_VIPBVI;;;;VimpelCom BVI AG
VIPGROUP_NL_T;VIPBV_T;Y;USD;N;Y;;;N;EN_VIPBV_T;;T_PARENT_2013;;VIP BV Tax Consolidated
VIPBV_T;VIPBV_TAX;Y;USD;Y;N;;;Y;EN_VIPBV_TAX;;T_VIPBV_T;;VIP BV Tax
VIPBV_T;VIPBV;N;USD;Y;Y;;;Y;EN_VIPBV;;;;VimpelCom B.V.
VIPBV_T;VIPLAOSHOLD;N;USD;Y;Y;;;Y;EN_VIPLAOSHOLD;;;;VimpelCom Holding Laos B.V.
VIPBV_T;VIPFIN;N;USD;Y;Y;;;Y;EN_VIPFIN;;;;B.V. VimpelCom Finance S.a r.l.
VIPGROUP_NL_T;VIP_SWISS_T;Y;USD;Y;N;;;N;EN_VIP_SWISS_T;;T_PARENT;;Swiss Tax Consolidation
VIP_SWISS_T;VIP_SWISS_TAX;Y;USD;Y;N;;;Y;EN_VIP_SWISS_TAX;;T_VIP_SWISS_T;;VIP Swiss Tax
VIP_SWISS_T;VIPKZHOLDAG;N;USD;Y;Y;;;Y;EN_VIPKZHOLDAG;;;;VIP Kazakhstan Holding AG
VIP_SWISS_T;VIPKGHOLDAG;N;USD;Y;Y;;;Y;EN_VIPKGHOLDAG;;;;VIP Kyrgyzstan Holding AG
VIP_NL_T;VIPFBV;N;USD;Y;Y;;;Y;EN_VIPFBV;;;;Vimpelcom Finance BV
VIP_NL_T;VIPFBERM;N;USD;Y;Y;;;Y;EN_VIPFBERM;;;;VimpelCom Finance Bermuda
VIP_T;RUSSIA_T;Y;USD;N;Y;;;N;EN_RUSSIA_T;;;;Russia Tax Consolidated (USD)
RUSSIA_T;RUSSIA_TOT_RUR_T;Y;RUB;N;Y;;;N;EN_RUSSIA_TOT_RUR_T;;;;Russia Tax Consolidated (RUB)
RUSSIA_TOT_RUR_T;RUSSIA_TAX_ADJ;Y;RUB;Y;N;;;Y;EN_RUSSIA_TAX_ADJ;;;;Russia Tax Adjustment
RUSSIA_TOT_RUR_T;RUSSIA_RUR_T;Y;RUB;N;Y;;;N;EN_RUSSIA_RUR_T;;T_PARENT;;Russia Tax Consolidated (RUB) excl. Adj,
RUSSIA_RUR_T;RUSSIA_TAX;Y;RUB;Y;N;;;Y;EN_RUSSIA_TAX;;T_RUSSIA_RUR_T_2014;;Russia Operations Tax
RUSSIA_RUR_T;RUSSIA_OP_T;Y;RUB;N;Y;;;N;EN_RUSSIA_OP_T;;T_PARENT_2014;;Russia Operations Tax Consolidated
RUSSIA_OP_T;RUSSIA_OP_TAX;Y;RUB;Y;N;;;Y;EN_RUSSIA_OP_TAX;;T_RUSSIA_OP_T;;Russia Operations Tax
RUSSIA_OP_T;OJSCVIP;N;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications
RUSSIA_OP_T;OJSCVIP_ICP;N;RUB;Y;Y;;;Y;EN_OJSCVIP;;;;OJSC Vimpel-Communications - ICP
RUSSIA_OP_T;RUSSIA_HYP_ADJ;N;RUB;Y;Y;;;Y;EN_RUSSIA_HYP_ADJ;;;;Vimpelcom Russia Hyperion adjustments
RUSSIA_OP_T;RUSSIA_ADJ;N;RUB;Y;Y;;;Y;EN_RUSSIA_ADJ;;;;Vimpelcom Russia adjustments
RUSSIA_OP_T;VIPFINLLC;N;RUB;Y;Y;;;Y;EN_VIPFINLLC;;;;VimpelCom Finance LLC
RUSSIA_OP_T;VIPINV;N;RUB;Y;Y;;;Y;EN_VIPINV;;;;VimpelCom Invest
RUSSIA_OP_T;BEELINE;N;RUB;Y;Y;;;Y;EN_BEELINE;;;;Beeline Venchures
RUSSIA_OP_T;OOOCKN;N;RUB;Y;Y;;;Y;EN_OOOCKN;;;;Investment Consultancy Agency Center of Commercial Real Estate
RUSSIA_OP_T;DICOM;N;RUB;Y;Y;;;Y;EN_DICOM;;;;Dicom
RUSSIA_OP_T;ALKAR;N;RUB;Y;Y;;;Y;EN_ALKAR;;;;Alkar
RUSSIA_OP_T;KOLANGON;N;RUB;Y;Y;;;Y;EN_KOLANGON;;;;KOLANGON OPTIM
RUSSIA_OP_T;STM;N;RUB;Y;Y;;;Y;EN_STM;;;;STM_Head_office
RUSSIA_OP_T;NATSER;N;RUB;Y;Y;;;Y;EN_NATSER;;;;Closed Joint Stock Company National Service Company""
RUSSIA_OP_T;SOVINTEL;N;RUB;Y;Y;;;Y;EN_SOVINTEL;;;;Sovintel Group
RUSSIA_OP_T;KUBTELE;N;RUB;Y;Y;;;Y;EN_KUBTELE;;;;Kubtelecom LLC
RUSSIA_OP_T;KUBINTER;N;RUB;Y;Y;;;Y;EN_KUBINTER;;;;Kubintersvyaz
RUSSIA_OP_T;SATILT;N;RUB;Y;Y;;;Y;EN_SATILT;;;;Satiltsentr
RUSSIA_OP_T;SAKHALIN;N;RUB;Y;Y;;;Y;EN_SAKHALIN;;;;Sakhalin Telekom Limited
RUSSIA_OP_T;CITILINE;N;RUB;Y;Y;;;Y;EN_CITILINE;;;;Citiline
RUSSIA_OP_T;RASCOM;N;RUB;Y;Y;;;Y;EN_RASCOM;;;;Rascom
RUSSIA_OP_T;VESTBALT;N;RUB;Y;Y;;;Y;EN_VESTBALT;;;;Vestbalt telekom (also CJSC WBT)
RUSSIA_OP_T;FIRMESS;N;RUB;Y;Y;;;Y;EN_FIRMESS;;;;Firm Messenger
RUSSIA_OP_T;SAMARA;N;RUB;Y;Y;;;Y;EN_SAMARA;;;;Samara Telecom
RUSSIA_OP_T;SMARTS_AST;N;RUB;Y;Y;;;Y;EN_SMARTS_AST;;;;SMARTS-Astrakhan
RUSSIA_OP_T;SMARTS_SAR;N;RUB;Y;Y;;;Y;EN_SMARTS_SAR;;;;SMARTS-Saratov
RUSSIA_OP_T;SMARTS_ELI;N;RUB;Y;Y;;;Y;EN_SMARTS_ELI;;;;SMARTS-Elista
RUSSIA_OP_T;SIM;N;RUB;Y;Y;;;Y;EN_SIM;;;;LLC SIM TELECOM
RUSSIA_OP_T;NTC;N;RUB;Y;Y;;;Y;EN_NTC;;;;National Tower Company
RUSSIA_RUR_T;RUSSIA_OS_T;Y;RUB;N;Y;;;N;EN_RUSSIA_OS_T;;T_PARENT_2014;;Russia Offshores Tax Consolidated
RUSSIA_OS_T;RUSSIA_OS_NL_T;Y;RUB;N;Y;;;N;EN_RUSSIA_OS_NL_T;;T_PARENT_2014;;Russia Offshores Belgium Consolidated
RUSSIA_OS_NL_T;RUSSIA_OS_NL_TAX;Y;RUB;Y;N;;;Y;EN_RUSSIA_OS_NL_TAX;;T_RUSSIA_OS_NL_T;;Russia Offshores Belgium Tax
RUSSIA_OS_NL_T;ERUS;N;RUB;Y;Y;;;Y;EN_ERUS;;;;EURUS HOLDING B.V. 
RUSSIA_OS_T;RUSSIA_OS_BEL_T;Y;RUB;N;Y;;;N;EN_RUSSIA_OS_BEL_T;;T_PARENT_2014;;Russia Offshores Belgium Consolidated
RUSSIA_OS_BEL_T;RUSSIA_OS_BEL_TAX;Y;RUB;Y;N;;;Y;EN_RUSSIA_OS_BEL_TAX;;T_RUSSIA_OS_BEL_T;;Russia Offshores Belgium Tax
RUSSIA_OS_BEL_T;VCESOP;N;RUB;Y;Y;;;Y;EN_VCESOP;;;;VC Esop N.V.
RUSSIA_OS_T;RUSSIA_OS_CYP_T;Y;RUB;N;Y;;;N;EN_RUSSIA_OS_CYP_T;;T_PARENT_2014;;Russia Offshores Cyprus Tax Consolidated
RUSSIA_OS_CYP_T;RUSSIA_OS_CYP_TAX;Y;RUB;Y;N;;;Y;EN_RUSSIA_OS_CYP_TAX;;T_RUSSIA_OS_CYP_T;;Russia Offshores Cyprus Tax
RUSSIA_OS_CYP_T;NOUSE;N;RUB;Y;Y;;;Y;EN_NOUSE;;;;Nouse Ltd
RUSSIA_OS_CYP_T;ARARIMA;N;RUB;Y;Y;;;Y;EN_ARARIMA;;;;Ararima Enterprises Ltd
RUSSIA_OS_CYP_T;BARDYM;N;RUB;Y;Y;;;Y;EN_BARDYM;;;;Bardym Enterprises Ltd
RUSSIA_OS_CYP_T;AGAMA;N;RUB;Y;Y;;;Y;EN_AGAMA;;;;Agama Ltd
RUSSIA_OS_T;RUSSIA_OS_BVI_T;Y;RUB;N;Y;;;N;EN_RUSSIA_OS_BVI_T;;T_PARENT_2014;;Russia Offshores BVI Tax Consolidated
RUSSIA_OS_BVI_T;RUSSIA_OS_BVI_TAX;Y;RUB;Y;N;;;Y;EN_RUSSIA_OS_BVI_TAX;;T_RUSSIA_OS_BVI_T;;Russia Offshores BVI Tax
RUSSIA_OS_BVI_T;PRUNESCOM;N;RUB;Y;Y;;;Y;EN_PRUNESCOM;;;;Prunescom Ltd
RUSSIA_OS_BVI_T;ANTEL;N;RUB;Y;Y;;;Y;EN_ANTEL;;;;AnTel Rascom Ltd
RUSSIA_OS_BVI_T;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd
RUSSIA_OS_BVI_T;FORTLAND;N;RUB;Y;Y;;;Y;EN_FORTLAND;;;;Fortland Ltd
RUSSIA_OS_T;RUSSIA_OS_USA_T;Y;RUB;N;Y;;;N;EN_RUSSIA_OS_USA_T;;T_PARENT_2014;;Russia Offshores USA Tax Consolidated
RUSSIA_OS_USA_T;RUSSIA_OS_USA_TAX;Y;RUB;Y;N;;;Y;EN_RUSSIA_OS_USA_TAX;;T_RUSSIA_OS_USA_T;;Russia Offshores USA Tax
RUSSIA_OS_USA_T;GOLDEN;N;RUB;Y;Y;;;Y;EN_GOLDEN;;;;Golden TeLecom, Inc.
RUSSIA_OS_USA_T;SFMTCIS;N;RUB;Y;Y;;;Y;EN_SFMTCIS;;;;SFMT_CIS
RUSSIA_OS_USA_T;GOLDENTELGRP;N;RUB;Y;Y;;;Y;EN_GOLDENTELGRP;;;;Golden Telecom Group, Inc.
RUSSIA_OS_USA_T;GOLDENTELSRV;N;RUB;Y;Y;;;Y;EN_GOLDENTELSRV;;;;Golden Teleservices, Inc.
RUSSIA_OS_USA_T;GTSFIN;N;RUB;Y;Y;;;Y;EN_GTSFIN;;;;GTS Finance, Inc.
RUSSIA_OS_USA_T;GOLDHOLD;N;RUB;Y;Y;;;Y;EN_GOLDHOLD;;;;Golden Holdings, Inc.
RUSSIA_OS_USA_T;SFMTRUS;N;RUB;Y;Y;;;Y;EN_SFMTRUS;;;;SFMT-Rusnet, Inc.
RUSSIA_OS_T;RUSSIA_OS_CZECH_T;Y;RUB;N;Y;;;N;EN_RUSSIA_OS_CZECH_T;;T_PARENT_2014;;Russia Offshores Czechia Tax Consolidated
RUSSIA_OS_CZECH_T;RUSSIA_OS_CZECH_TAX;Y;RUB;Y;N;;;Y;EN_RUSSIA_OS_CZECH_TAX;;T_RUSSIA_OS_CZECH_T;;Russia Offshores Czechia Tax
RUSSIA_OS_CZECH_T;STHOLD;N;RUB;Y;Y;;;Y;EN_STHOLD;;;;ST-Holding, s.r.o.
VIP_T;KSGROUP_T;Y;USD;N;Y;;;N;EN_KSGROUP_T;;;;Ukraine Group Tax Consolidated (USD)
KSGROUP_T;KSGROUP_UAH_T;Y;UAH;N;Y;;;N;EN_KSGROUP_UAH_T;;;;Ukraine Group Tax Consolidated (UAH)
KSGROUP_UAH_T;UKR_TAX_ADJ;Y;UAH;Y;N;;;Y;EN_UKR_TAX_ADJ;;;;Ukraine Group Tax Consolidated Adjustment (UAH)
KSGROUP_UAH_T;UKR_OP_T;Y;UAH;N;Y;;;N;EN_UKR_OP_T;;;;Ukraine Operations Tax Consolidated
UKR_OP_T;KYIVSTAR_T;Y;UAH;N;Y;;;N;EN_KYIVSTAR_T;;T_PARENT;;Ukraine KSUA Tax Consolidated
KYIVSTAR_T;KYIVSTAR_TAX;Y;UAH;Y;N;;;Y;EN_KYIVSTAR_TAX;;T_KYIVSTAR_T;;Ukraine KSUA Tax
KYIVSTAR_T;KYIVSTAR;N;UAH;Y;Y;;;Y;EN_KYIVSTAR;;;;Kyivstar
KYIVSTAR_T;STARAVTO;N;UAH;Y;Y;;;Y;EN_STARAVTO;;;;Kyivstar GSM Joint Stock Company Subsidiary "Staravto"
KYIVSTAR_T;STARMONEY;N;UAH;Y;Y;;;Y;EN_STARMONEY;;;;Kyivstar GSM Joint Stock Company Subsidiary "Starmoney"
KYIVSTAR_T;GTLLC;N;UAH;Y;Y;;;Y;EN_GTLLC;;;;GOLDEN TELECOM Limited Liability Company
UKR_OP_T;UKR_T;Y;UAH;N;Y;;;N;EN_UKR_T;;T_PARENT;;Ukraine Beeline Tax Consolidated
UKR_T;UKRAINE_TAX;Y;UAH;Y;N;;;Y;EN_UKRAINE_TAX;;T_UKR_T;;Ukraine Beeline Tax
UKR_T;INVESTHOLD;N;UAH;Y;Y;;;Y;EN_INVESTHOLD;;;;Invest-Holding Limited Liability Company
UKR_T;GTLLC;N;UAH;Y;Y;;;Y;EN_GTLLC;;;;GOLDEN TELECOM Limited Liability Company
KSGROUP_UAH_T;UKR_OS_T;Y;UAH;N;Y;;;N;EN_UKR_OS_T;;;;Ukraine Offshores Tax Consolidated
UKR_OS_T;UKR_OS_USA_T;Y;UAH;N;Y;;;N;EN_UKR_OS_USA_T;;T_PARENT;;Ukraine Offshores USA Tax Consolidated
UKR_OS_USA_T;UKR_OS_USA_TAX;Y;UAH;Y;N;;;Y;EN_UKR_OS_USA_TAX;;T_UKR_OS_USA_T;;Ukraine Offshores USA Tax
UKR_OS_USA_T;GTSUKR;N;UAH;Y;Y;;;Y;EN_GTSUKR;;;;GTS Ukrainian TeleSystems L.L.C.
UKR_OS_USA_T;CELLUKR;N;UAH;Y;Y;;;Y;EN_CELLUKR;;;;CellUkraine Ltd
UKR_OS_T;UKR_OS_CYP_T;Y;UAH;N;Y;;;N;EN_UKR_OS_CYP_T;;T_PARENT;;Ukraine Offshores Cyrpus Tax Consolidated
UKR_OS_CYP_T;UKR_OS_CYP_TAX;Y;UAH;Y;N;;;Y;EN_UKR_OS_CYP_TAX;;T_UKR_OS_CYP_T;;Ukraine Offshores Cyprus Tax
UKR_OS_CYP_T;WINTOP;N;UAH;Y;Y;;;Y;EN_WINTOP;;;;Wintop Management Ltd
UKR_OS_CYP_T;CELLCROFTHOLD;N;UAH;Y;Y;;;Y;EN_CELLCROFTHOLD;;;;Cellcroft Holdings Ltd
UKR_OS_CYP_T;CRADEL;N;UAH;Y;Y;;;Y;EN_CRADEL;;;;Cradel Investments Ltd
UKR_OS_CYP_T;CRAYOLA;N;UAH;Y;Y;;;Y;EN_CRAYOLA;;;;Crayola Properties Ltd
UKR_OS_CYP_T;CRISDENHOLD;N;UAH;Y;Y;;;Y;EN_CRISDENHOLD;;;;Crisden Holdings Ltd
VIP_T;CIS_T;Y;USD;N;Y;;;N;EN_CIS_T;;;;CIS Tax Consolidated
CIS_T;CIS_TAX_ADJ;Y;USD;Y;N;;;Y;EN_CIS_TAX_ADJ;;;;CIS Holding Tax Adjustment
CIS_T;CIS_HOLDING_T;Y;USD;N;Y;;;N;EN_CIS_HOLDING_T;;;;CIS Holding Tax Consolidated
CIS_HOLDING_T;CIS_ADJ;N;USD;Y;Y;;;Y;EN_CIS_ADJ;;;;CIS Consolidation Adjustments
CIS_T;KAZAKH_T;Y;USD;N;Y;;;N;EN_KAZAKH_T;;;;Kazakhstan Tax Consolidated
KAZAKH_T;KAZ_TAX_ADJ;Y;USD;Y;N;;;Y;EN_KAZ_TAX_ADJ;;;;Kazakhstan Tax Adjustment
KAZAKH_T;KAZ_T;Y;USD;N;Y;;;N;EN_KAZ_T;;;;Kazakhstan Operations Tax Consolidated
KAZ_T;GTIKAZTEL;N;USD;Y;Y;;;Y;EN_GTIKAZTEL;;;;GTI Kaztel Ltd
KAZ_T;KAZ_OP_T;Y;KZT;N;Y;;;N;EN_KAZ_OP_T;;T_PARENT_2013;;Kazakhstan Operations Tax Consolidated (excl. Adj)
KAZ_OP_T;KAZ_TAX;Y;KZT;Y;N;;;Y;EN_KAZ_TAX;;T_KAZ_OP_T_2013;;Kazchstan Operations Tax
KAZ_OP_T;KARTEL;N;KZT;Y;Y;;;Y;EN_KARTEL;;;;Kar-Tel
KAZ_OP_T;TWODAY;N;KZT;Y;Y;;;Y;EN_TWODAY;;;;2Day Telecom LLP
KAZ_OP_T;TETA;N;KZT;Y;Y;;;Y;EN_TETA;;;;TETA Telecom LLP
KAZ_OP_T;TNSPLUS;N;KZT;Y;Y;;;Y;EN_TNSPLUS;;;;TNS-Plus LLP
KAZ_OP_T;TNSPLUS_Adj;N;KZT;Y;Y;;;Y;EN_TNSPLUS_Adj;;;;TNS-Plus LLP Adjustments
KAZ_OP_T;KEM;N;KZT;Y;Y;;;Y;EN_KEM;;;;Kazeuromobile LLP
KAZAKH_T;KAZ_OS_T;Y;USD;N;Y;;;N;EN_KAZ_OS_T;;;;Kazakhstan Offshores Tax Consolidated
KAZ_OS_T;KAZ_OS_SEY_T;Y;USD;N;Y;;;N;EN_KAZ_OS_SEY_T;;T_PARENT;;Kazakhstan Offshores Seychelles Tax Consolidated
KAZ_OS_SEY_T;KAZ_OS_TAX;Y;USD;Y;N;;;Y;EN_KAZ_OS_TAX;;T_KAZ_OS_SEY_T;;Kazchstan Offshores Seychelles Tax
KAZ_OS_SEY_T;WENTHORP;N;USD;Y;Y;;;Y;EN_WENTHORP;;;;Wenthorp Industries Ltd.
KAZ_OS_SEY_T;IRING;N;USD;Y;Y;;;Y;EN_IRING;;;;Irington Developments Ltd.
KAZ_OS_T;KAZ_OS_CYP_T;Y;USD;N;Y;;;N;EN_KAZ_OS_CYP_T;;T_PARENT;;Kazakhstan Offshores Cyprus Tax Consolidated
KAZ_OS_CYP_T;KAZ_OS_CYP_TAX;Y;USD;Y;N;;;Y;EN_KAZ_OS_CYP_TAX;;T_KAZ_OS_CYP_T;;Kazchstan Offshores Cyprus Tax
KAZ_OS_CYP_T;CLAFDOR;N;USD;Y;Y;;;Y;EN_CLAFDOR;;;;Clafdor Investments Ltd
KAZ_OS_CYP_T;COMNIDORHOLD;N;USD;Y;Y;;;Y;EN_COMNIDORHOLD;;;;Comnidor Holdings Ltd
CIS_T;CIS_WOKZ_T;Y;USD;N;Y;;;N;EN_CIS_WOKZ_T;;;;CIS without Kazachstan Tax Consolidated
CIS_WOKZ_T;FREEVALE;N;USD;Y;Y;;;Y;EN_FREEVALE;;;;Freevale Enterprises Inc.
CIS_WOKZ_T;CISWOKZ_LOC_Adj;N;USD;Y;Y;;;Y;EN_CISWOKZ_LOC_Adj;HPL1;;;CIS without Kazakstan Local Adjustments
CIS_WOKZ_T;Armen_Adj;N;USD;Y;Y;;;Y;EN_Armen_Adj;HPL2;;;Armenia Adjustments
CIS_WOKZ_T;Georg_Adj;N;USD;Y;Y;;;Y;EN_Georg_Adj;HPL2;;;Georgia Adjustments
CIS_WOKZ_T;Kyrgyz_Adj;N;USD;Y;Y;;;Y;EN_Kyrgyz_Adj;HPL2;;;Kyrgyzstan Adjustments
CIS_WOKZ_T;CISWOKZ_HQ;N;USD;Y;Y;;;Y;EN_CISWOKZ_HQ;HPL1_HPL2;;;CIS without Kazakstan HQ
CIS_WOKZ_T;UZBEK_T;Y;USD;N;Y;;;N;EN_UZBEK_T;;;;Uzbekistan Tax Consolidated
UZBEK_T;UZB_T;Y;USD;N;Y;;;N;EN_UZB_T;;;;Uzbekistan Operations Tax Consolidated
UZB_T;UNITEL;N;USD;Y;Y;;;Y;EN_UNITEL;;;;Unitel LLC
UZB_T;BUZTON;N;USD;Y;Y;;;Y;EN_BUZTON;;;;Joint Venture Buzton Ltd Liability Company
UZBEK_T;UZB_T_UZS;Y;UZS;N;Y;;;N;EN_UZBEK_T_UZS;;;;Uzbekistan Operations Tax Consolidated - Som
UZB_T_UZS;UNITEL_UZS;N;UZS;Y;Y;;;Y;EN_UNITEL_UZS;;;;Unitel LLC - Som
UZB_T_UZS;BUZTON_UZS;N;UZS;Y;Y;;;Y;EN_BUZTON_UZS;;;;Joint Venture Buzton Ltd Liability Company - Som
UZBEK_T;UZB_OS_T;Y;USD;N;Y;;;N;EN_UZB_OS_T;;T_PARENT;;Uzbekistan OffShores Tax Consolidated
UZB_OS_T;UZBEK_OS_TAX;Y;USD;Y;N;;;Y;EN_UZBEK_OS_TAX;;T_UZB_OS_T;;Uzbekistan OffShores Tax
UZB_OS_T;SILKWAY;N;USD;Y;Y;;;Y;EN_SILKWAY;;;;Silkway Holding B.V.
CIS_WOKZ_T;TADJIK_T;Y;USD;N;Y;;;N;EN_TADJIK_T;;T_PARENT;;Tadjikistan Tax Consolidated
TADJIK_T;TADJIK_TAX;Y;USD;Y;N;;;Y;EN_TADJIK_TAX;;T_TADJIK_T;;Tadjikistan Tax
TADJIK_T;TACOM;N;USD;Y;Y;;;Y;EN_TACOM;;;;TACOM LLC
TADJIK_T;TACOM_Adj;N;USD;Y;Y;;;Y;EN_TACOM_Adj;HPL2;;;TACOM LLC Adjustments
CIS_WOKZ_T;ARMEN_T;Y;USD;N;Y;;;N;EN_ARMEN_T;;;;Armenia Tax Consolidated (USD)
ARMEN_T;ARMENTEL;N;AMD;Y;Y;;;Y;EN_ARMENTEL;;;;Armenia Telephone Company
ARMEN_T;ARMENCELL;N;AMD;Y;Y;;;Y;EN_ARMENCELL;;;;Armencell CJSC
CIS_WOKZ_T;KYRGYZ_T;Y;USD;N;Y;;;N;EN_KYRGYZ_T;;;;Kyrgyzstan Tax Consolidated
KYRGYZ_T;KYR_T;Y;KGS;N;Y;;;N;EN_KYR_T;;T_PARENT;;Kyrgyzstan Operations Tax Consolidated
KYR_T;KYRGYZ_TAX;Y;KGS;Y;N;;;Y;EN_KYRGYZ_TAX;;T_KYR_T;;Kyrgyzstan Operations Tax
KYR_T;SKYMOBILE;N;KGS;Y;Y;;;Y;EN_SKYMOBILE;;;;Sky Mobile LLC
KYRGYZ_T;KYR_OS_T;Y;USD;N;Y;;;N;EN_KYR_OS_T;;T_PARENT;;Kyrgyzstan OffShores Tax Consolidated
KYR_OS_T;KYRGYZ_OS_TAX;Y;USD;Y;N;;;Y;EN_KYRGYZ_OS_TAX;;T_KYR_OS_T;;Kyrgyzstan Offshores Tax
KYR_OS_T;MENACREST;N;USD;Y;Y;;;Y;EN_MENACREST;;;;Menacrest Limited (Cyprus)
KYR_OS_T;LIMNOTEX;N;USD;Y;Y;;;Y;EN_LIMNOTEX;;;;Limnotex Developments Ltd.(Cyprus)
CIS_WOKZ_T;GEORG_T;Y;USD;N;Y;;;N;EN_GEORG_T;;;;Georgia Tax Consolidated
GEORG_T;GEORG_OP_T;Y;GEL;N;Y;;;N;EN_GEORG_OP_T;;T_PARENT;;Georgia Operations Tax Consolidated
GEORG_OP_T;GEORG_TAX;Y;GEL;Y;N;;;Y;EN_GEORG_TAX;;T_GEORG_OP_T;;Georgia Operations Tax
GEORG_OP_T;MOBITEL;N;GEL;Y;Y;;;Y;EN_MOBITEL;;;;Mobitel LLC
GEORG_T;GEORG_OS_T;Y;USD;N;Y;;;N;EN_GEORG_OS_T;;T_PARENT;;Georgia Offshores Tax Consolidated
GEORG_OS_T;GEORG_OS_TAX;Y;USD;Y;N;;;Y;EN_GEORG_OS_TAX;;T_GEORG_OS_T;;Georgia Offshores Tax
GEORG_OS_T;WATERTRAIL;N;USD;Y;Y;;;Y;EN_WATERTRAIL;;;;Watertrail Industries Ltd.
VIP_T;WIND_T;Y;USD;N;Y;;;N;EN_WIND_T;;;;Wind Telecom S.p.A. Tax Consolidated
WIND_T;WIND_TAX_ADJ;Y;EUR;Y;N;;;Y;EN_WIND_TAX_ADJ;;;;Wind Telecom S.p.A. Tax Adjustment
WIND_T;WT_ADJ;N;EUR;Y;Y;;;Y;EN_WT_ADJ;;;;Wind Telecom Group Adjustments Entity
WIND_T;OTSE_NEW;N;EUR;Y;Y;;;Y;EN_OTSE_NEW;;;;Orascom Telecom Service Europe
WIND_T;WINDTELCO_ADJ;N;EUR;Y;Y;;;Y;EN_WINDTELCO_ADJ;HPL1_HPL2;;;Wind Telecomunicazioni SpA Adjustments
WIND_T;VTHBV;N;EUR;Y;Y;;;Y;EN_VTHBV;;;;VTHBV - VimpelCom Telecom Holding BV
WIND_T;WINDACQHOLD_ADJ;N;EUR;Y;Y;;;Y;EN_WINDACQHOLD_ADJ;;;;Wind Acquisition Holdings Finance SpA Adjustments
WIND_T;WIND_ITALY_T;Y;EUR;N;Y;;;N;EN_WIND_ITALY_T;;;;Wind Italy Tax Consolidated
WIND_ITALY_T;WT;N;EUR;Y;Y;;;Y;EN_WT;HPL1_HPL2;;;Wind Telecom S.p.A.
WIND_ITALY_T;WAHF_SPA_T;Y;EUR;N;Y;;;N;EN_WAHF_SPA_T;;T_PARENT;;Whaf Spa Tax Consolidated
WAHF_SPA_T;WAHF_ITA_TAX;Y;EUR;Y;N;;;Y;EN_WAHF_ITA_TAX;;T_WAHF_SPA_T;;Wahf Spa Tax
WAHF_SPA_T;WINDRETAIL;N;EUR;Y;Y;;;Y;EN_WINDRETAIL;;;;Wind Retail SRL
WAHF_SPA_T;WINDACQHOLD;N;EUR;Y;Y;;;Y;EN_WINDACQHOLD;HPL1_HPL2;;;Wind Acquisition Holdings Finance SpA
WAHF_SPA_T;WINDTELCO;N;EUR;Y;Y;;;Y;EN_WINDTELCO;;;;Wind Telecomunicazioni SpA
WAHF_SPA_T;PHONE;Y;EUR;Y;N;;;Y;EN_PHONE;;;;Phone - Tax history only
WAHF_SPA_T;WIND;Y;EUR;Y;N;;;Y;EN_WIND;;;;Wind - Tax history only
WAHF_SPA_T;GALATA;N;EUR;Y;Y;;;Y;EN_GALATA;;;;Galata
WIND_T;WIND_LUXBG_T;Y;EUR;N;Y;;;N;EN_WIND_LUXBG_T;;;;Wind Luxembourg Tax Consolidated
WIND_LUXBG_T;LUX_3_T;Y;EUR;N;Y;;;N;EN_LUX_3_T;;;;Luxembourg 3 Tax Consolidated
LUX_3_T;WINDACQFINII;N;EUR;Y;Y;;;Y;EN_WINDACQFINII;;;;Wind Acquisition Finance II S.A.
LUX_3_T;WINDACQFIN;N;EUR;Y;Y;;;Y;EN_WINDACQFIN;;;;Wind Acquisition Finance S.A.
LUX_3_T;WINDFIN;N;EUR;Y;Y;;;Y;EN_WINDFIN;;;;Wind Finance SL S.A.
LUX_3_T;WAF;Y;EUR;Y;N;;;Y;EN_WAF;;;;WAF - Tax history only
LUX_3_T;WAF_II;Y;EUR;Y;N;;;Y;EN_WAF_II;;;;WAF_II - Tax history only
LUX_3_T;WF_SL;Y;EUR;Y;N;;;Y;EN_WF_SL;;;;WF_SL - Tax history only
WIND_LUXBG_T;LUX_2_T;Y;EUR;N;Y;;;N;EN_LUX_2_T;;;;Luxembourg 2 Tax Consolidated
LUX_2_T;WINDACQHOLDFIN;N;EUR;Y;Y;;;Y;EN_WINDACQHOLDFIN;;;;Wind Acquisition Holdings Finance SA
LUX_2_T;WINDACQHOLDFINII;N;EUR;Y;Y;;;Y;EN_WINDACQHOLDFINII;;;;Wind Acquisition Holdings Finance II SA
WIND_LUXBG_T;LUX_1_T;Y;EUR;N;Y;;;N;EN_LUX_1_T;;;;Luxembourg 1 Tax Consolidated
LUX_1_T;WC_SARL_T;Y;EUR;N;Y;;;N;EN_WC_SARL_T;;T_PARENT;;Weather Capital S.a.r.l Tax Consolidated
WC_SARL_T;WC_SARL_TAX;Y;EUR;Y;N;;;Y;EN_WC_SARL_TAX;;T_WC_SARL_T;;Weather Capital S.a.r.l Tax
WC_SARL_T;WCSARL;N;EUR;Y;Y;;;Y;EN_WCSARL;;;;WC_SARL - Weather Capital S.a.r.l
WC_SARL_T;WC_SARL_EUR;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR;HPL1_HPL2;;;Weather Capital S.a.r.l
LUX_1_T;WC_SARL_EUR_B;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR_B;;;;Weather Capital S.a.r.l BRANCH
LUX_1_T;WCSP_T;Y;USD;N;Y;;;N;EN_WCSP_T;;T_PARENT;;Weather Capital Special Purposes I SA Tax Consolidated
WCSP_T;WCSP_TAX;Y;USD;Y;N;;;Y;EN_WCSP_TAX;;T_WCSP_T;;Weather Capital Special Purposes I SA Tax
WCSP_T;WCSP;N;EUR;Y;Y;;;Y;EN_WCSP;;;;WCSP - Weather Capital Special Purposes I SA
WCSP_T;WCSP_USD;N;USD;Y;Y;;;Y;EN_WCSP_USD;HPL1_HPL2;;;Weather Capital Special Purposes I SA in USD
LUX_1_T;WCSP_USD_B;N;USD;Y;Y;;;Y;EN_WCSP_USD_B;;;;Weather Capital Special Purposes I SA in USD BRANCH
LUX_1_T;KLAROLUX;N;EUR;Y;Y;;;Y;EN_KLAROLUX;;;;KLAROLUX - Klarolux Investments Sarl
LUX_1_T;SALFINSARL;N;USD;Y;Y;;;Y;EN_SALFINSARL;;;;Salsa Finance S.a r.l.
WIND_T;GTH_T;Y;USD;N;Y;;;N;EN_GTH_T;;;;GTH Tax Consolidated
GTH_T;GTH_TAX_ADJ;Y;EUR;Y;N;;;Y;EN_GTH_TAX_ADJ;;;;GTH Tax Adjustment
GTH_T;ALGERIA_T;Y;DZD;N;Y;;;N;EN_ALGERIA_T;;T_PARENT;;Algeria Tax Consolidated
ALGERIA_T;ALGERIA_TAX;Y;DZD;Y;N;;;Y;EN_ALGERIA_TAX;;T_ALGERIA_T;;Algeria Tax
ALGERIA_T;OTA;N;DZD;Y;Y;;;Y;EN_OTA;;;;Orascom Telecom Algerie SPA
ALGERIA_T;OPTIMUM;N;DZD;Y;Y;;;Y;EN_OPTIMUM;;;;Optimum Telecom Algeria SPA
GTH_T;PAKISTAN_T;Y;PKR;N;Y;;;N;EN_PAKISTAN_T;;;;Pakistan Tax Consolidated
PAKISTAN_T;WBANK;N;PKR;Y;Y;;;Y;EN_WBANK;HPL1_HPL2;;;Waseela Microfinance Bank Limited
PAKISTAN_T;WARID;N;PKR;Y;Y;;;Y;EN_WARID;HPL1_HPL2;;;Warid Telecom (Pvt) Ltd
PAKISTAN_T;PAKISTAN_WOWBANK_T;Y;PKR;N;Y;;;N;EN_PAKISTAN_WOWBANK_T;;T_PARENT;;Pakistan without WBank Tax Consolidated
PAKISTAN_WOWBANK_T;PAKISTAN_TAX;Y;PKR;Y;N;;;Y;EN_PAKISTAN_TAX;;T_PAKISTAN_WOWBANK_T;;Pakistan Tax
PAKISTAN_WOWBANK_T;PMCL;N;PKR;Y;Y;;;Y;EN_PMCL;;;;Pakistan Mobile Communications Limited
PAKISTAN_WOWBANK_T;DEODAR;N;PKR;Y;Y;;;Y;EN_DEODAR;;;;Deodar (Private) Limited
PAKISTAN_WOWBANK_T;BC;N;PKR;Y;Y;;;Y;EN_BC;;;;Business & Communication Systems (Pvt) Ltd
PAKISTAN_WOWBANK_T;LDNPAK;N;PKR;Y;Y;;;Y;EN_LDNPAK;;;;LinkdoNet Pakistan (Private) Limited
PAKISTAN_WOWBANK_T;LDNTEL;N;PKR;Y;Y;;;Y;EN_LDNTEL;;;;LinkDotNet Telecom Limited
GTH_T;BANGLADESH_T;Y;BDT;N;Y;;;N;EN_BANGLADESH_T;;T_PARENT;;Bangladesh Tax Consolidated
BANGLADESH_T;BANGLADESH_TAX;Y;BDT;Y;N;;;Y;EN_BANGLADESH_TAX;;T_BANGLADESH_T;;Bangladesh Tax
BANGLADESH_T;BDCL;N;BDT;Y;Y;;;Y;EN_BDCL;;;;Banglalink Digital Communications Limited
GTH_T;GTH_OTH_T;Y;USD;N;Y;;;N;EN_GTH_OTH_T;;;;GTH Other Tax Consolidated
GTH_OTH_T;DUTCH_OS_USD_1_T;Y;USD;N;Y;;;N;EN_DUTCH_OS_USD_1_T;;T_PARENT;;Dutch Offshores USD Tax Consolidated 1
DUTCH_OS_USD_1_T;DUTCH_OS_USD_1_TAX;Y;USD;Y;N;;;Y;EN_DUTCH_OS_USD_1_TAX;;T_DUTCH_OS_USD_1_T;;Dutch Offshores USD Tax 1
DUTCH_OS_USD_1_T;GTHFBV;N;USD;Y;Y;;;Y;EN_GTHFBV;;;;GTH Finance B.V.
GTH_OTH_T;DUTCH_OS_USD_2_T;Y;USD;N;Y;;;N;EN_DUTCH_OS_USD_2_T;;T_PARENT;;Dutch Offshores USD Tax Consolidated 2
DUTCH_OS_USD_2_T;DUTCH_OS_USD_2_TAX;Y;USD;Y;N;;;Y;EN_DUTCH_OS_USD_2_TAX;;T_DUTCH_OS_USD_2_T;;Dutch Offshores USD Tax 2
DUTCH_OS_USD_2_T;GTNBVUSD;N;USD;Y;Y;;;Y;EN_GTNBVUSD;;;;Global Telecom Netherlands BV USD
GTH_OTH_T;DUTCH_OS_T;Y;EUR;N;Y;;;N;EN_DUTCH_OS_T;;T_PARENT;;Dutch Offshores Tax Consolidated
DUTCH_OS_T;DUTCH_OS_TAX;Y;EUR;Y;N;;;Y;EN_DUTCH_OS_TAX;;T_DUTCH_OS_T;;Dutch Offshores Tax
DUTCH_OS_T;GTNBV;N;EUR;Y;Y;;;Y;EN_GTNBV;;;;Global Telecom Netherlands BV
GTH_OTH_T;MALTESE_OS_T;Y;USD;N;Y;;;N;EN_MALTESE_OS_T;;T_PARENT;;Maltese Offshores Tax Consolidated
MALTESE_OS_T;MALTESE_TAX;Y;USD;Y;N;;;Y;EN_MALTESE_TAX;;T_MALTESE_OS_T;;Maltese Offshores Tax
MALTESE_OS_T;TGLOBE;N;USD;Y;Y;;;Y;EN_TGLOBE;;;;Telecel Globe Limited
MALTESE_OS_T;TVL;N;USD;Y;Y;;;Y;EN_TVL;;;;Telecom Ventures Limited
MALTESE_OS_T;T_CSL;N;USD;Y;Y;;;Y;EN_T_CSL;;;;Telecom CS Limited
MALTESE_OS_T;SAWLTD;N;USD;Y;Y;;;Y;EN_SAWLTD;;;;Sawyer Limited
MALTESE_OS_T;EURASIA;N;USD;Y;Y;;;Y;EN_EURASIA;;;;Orascom Telecom Eurasia Ltd.
MALTESE_OS_T;FPPL;N;USD;Y;Y;;;Y;EN_FPPL;;;;Financial Powers Plan Ltd.
MALTESE_OS_T;MOGA;N;USD;Y;Y;;;Y;EN_MOGA;;;;Moga Holding Ltd.
MALTESE_OS_T;IHL;N;USD;Y;Y;;;Y;EN_IHL;;;;Iraq Holding Limited
MALTESE_OS_T;ORATEL;N;USD;Y;Y;;;Y;EN_ORATEL;;;;Oratel International Inc.
MALTESE_OS_T;MINIMAX;N;USD;Y;Y;;;Y;EN_MINIMAX;;;;Minimax Ventures Limited
MALTESE_OS_T;OTESOP;N;USD;Y;Y;;;Y;EN_OTESOP;;;;Orascom Telecom Esop Ltd.
MALTESE_OS_T;TICL;N;USD;Y;Y;;;Y;EN_TICL;;;;Telecom Iraq Corp. Limited
MALTESE_OS_T;THCML;N;CAD;Y;Y;;;Y;EN_THCML;;;;Telecom Holding Canada (Malta) Limited
MALTESE_OS_T;IWCPL_SA;N;USD;Y;Y;;;Y;EN_IWCPL_SA;;;;International Wireless Communications Pakistan Limited
MALTESE_OS_T;TMGL;N;USD;Y;Y;;;Y;EN_TMGL;;;;Telecom Management Group Limited
MALTESE_OS_T;DMSLTD;N;USD;Y;Y;;;Y;EN_DMSLTD;;;;Database Management Services Ltd (Maltese Entity)
GTH_OTH_T;TGLOBE_T;Y;USD;N;Y;;;N;EN_TGLOBE_T;;T_PARENT_2013;;Telecelglobe Group Tax Consolidated
TGLOBE_T;TGLOBE_TAX;Y;USD;Y;N;;;Y;EN_TGLOBE_TAX;;T_TGLOBE_T_2013;;Telecelglobe Group Tax
TGLOBE_T;TCAR;N;XAF;Y;Y;;;Y;EN_TCAR;;;;Telecel Centrafrique S.A.
TGLOBE_T;TUCOM;N;BIF;Y;Y;;;Y;EN_TUCOM;;;;U-Com Burundi S.A.
GTH_OTH_T;GTHC_BV;N;USD;Y;Y;;;Y;EN_GTHC_BV;;;;GTH Canada B.V.
GTH_OTH_T;GTH_TAX_T;Y;USD;N;Y;;;N;EN_GTH_TAX_T;;T_PARENT_2015;;Global Telecom Holding SAE Consolidated
GTH_TAX_T;GTH_TAX;Y;USD;Y;Y;;;Y;EN_GTH_TAX;;T_GTH_TAX_T;;Global Telecom Holding S.A.E. TAX
GTH_TAX_T;GTH_USD;N;USD;Y;Y;;;Y;EN_GTH_USD;;;;Global Telecom Holding S.A.E. USD
GTH_TAX_T;GTH_REC_USD;N;USD;Y;Y;;;Y;EN_GTH_REC_USD;;;;Global Telecom Holding S.A.E. Reclass Adjustments USD
GTH_TAX_T;GTH;N;EGP;Y;Y;;;Y;EN_GTH;HPL1_HPL2;;;Global Telecom Holding S.A.E.
GTH_OTH_T;GTH_ADJ;N;EGP;Y;Y;;;Y;EN_GTH_ADJ;;;;Global Telecom Holding S.A.E. adjustments
GTH_OTH_T;GTH_USD_ADJ;N;USD;Y;Y;;;Y;EN_GTH_USD_ADJ;;;;Global Telecom Holding S.A.E. adjustments USD
GTH_OTH_T;GTH_OS_T;Y;USD;N;Y;;;N;EN_GTH_OS_T;;;;GTH Offhores Tax Consolidated (USD)
GTH_OS_T;GTH_OS_EGP_T;Y;EGP;N;Y;;;N;EN_GTH_OS_EGP_T;;T_PARENT;;GTH Offhores Tax Consolidated (EGP)
GTH_OS_EGP_T;GTH_OS_TAX;Y;EGP;Y;N;;;Y;EN_GTH_OS_TAX;;T_GTH_OS_EGP_T;;GTH Offhores Tax
GTH_OS_EGP_T;RING_T;Y;EGP;N;Y;;;N;EN_RING_T;;T_SUB_PARENT;;Ring Tax Consolidated
RING_T;MMMS;N;EGP;Y;Y;;;Y;EN_MMMS;;;;Multi Media Mega Stores
RING_T;RING_ALG;N;DZD;Y;Y;;;Y;EN_RING_ALG;;;;Ring Algeria LLC
RING_T;RING_BANG;N;BDT;Y;Y;;;Y;EN_RING_BANG;;;;Ring Distribution (Private) Limited (Ring Bangladesh)
RING_T;RING_DUBAI;N;AED;Y;Y;;;Y;EN_RING_DUBAI;;;;The Phone Company FZO
RING_T;RING_IRAQ;N;USD;Y;Y;;;Y;EN_RING_IRAQ;;;;Ring Iraq
RING_T;RING_PAK;N;PKR;Y;Y;;;Y;EN_RING_PAK;;;;Ring Distribution (Private) Limited (Ring Pakistan)
RING_T;RING_PAKS;N;PKR;Y;Y;;;Y;EN_RING_PAKS;;;;CaRing (Private) Limited (Ring Pakistan Service)
RING_T;RING_EG;N;EGP;Y;Y;;;Y;EN_RING_EG;;;;Ring for Handset Service (CaRing)
RING_T;RING_ALGS;N;DZD;Y;Y;;;Y;EN_RING_ALGS;;;;Ring Maintenance - CARING LLC
RING_T;RING_MAINT;N;EGP;Y;Y;;;Y;EN_RING_MAINT;;;;Ring Distribution SAE
RING_T;RING_RD;N;TND;Y;Y;;;Y;EN_RING_RD;;;;R & D S.a.r.l.
RING_T;RING_AEI;N;USD;Y;Y;;;Y;EN_RING_AEI;;;;Advanced Electronic Industries
GTH_OS_EGP_T;GTH_OS_OTH_T;Y;EGP;N;Y;;;N;EN_GTH_OS_OTH_T;;T_SUB_PARENT;;GTH Offhores Other Tax Consolidated
GTH_OS_OTH_T;CAT;N;DZD;Y;Y;;;Y;EN_CAT;;;;Consortium Algerien de Telecommunications S.p.A
GTH_OS_OTH_T;CORTEX_EG;N;EGP;Y;Y;;;Y;EN_CORTEX_EG;;;;Cortex for Services and Consultations S.A.E.
GTH_OS_OTH_T;ITCL;N;GBP;Y;Y;;;Y;EN_ITCL;;;;International Telecommunication Consortium Ltd.
GTH_OS_OTH_T;MEDCABLE;N;EUR;Y;Y;;;Y;EN_MEDCABLE;;;;Med Cable Ltd.
GTH_OS_OTH_T;GTACQ;N;EUR;Y;Y;;;Y;EN_GTACQ;;;;Global Telecom Acquisition
GTH_OS_OTH_T;GTFSCA;N;USD;Y;Y;;;Y;EN_GTFSCA;;;;Global Telecom Finance SCA
GTH_OS_OTH_T;OTH_MINV;N;EGP;Y;Y;;;Y;EN_OTH_MINV;;;;Orascom Holding Handset Investment Company
GTH_OS_OTH_T;GTNBV;N;EUR;Y;Y;;;Y;EN_GTNBV;;;;Global Telecom Netherlands BV
GTH_OS_OTH_T;GTO;N;EUR;Y;Y;;;Y;EN_GTO;;;;Global Telecom One Sarl
GTH_OS_OTH_T;GTSARL;N;USD;Y;Y;;;Y;EN_GTSARL;;;;Global Telecom SARL
GTH_OS_OTH_T;TELE_SA;N;CHF;Y;Y;;;Y;EN_TELE_SA;;;;Telecel International Services SA
GTH_OS_OTH_T;TIL;N;USD;Y;Y;;;Y;EN_TIL;;;;Telecel International Ltd
GTH_OS_OTH_T;GT_OSCAR;N;USD;Y;Y;;;Y;EN_GT_OSCAR;;;;Global Telecom Oscar
GTH_OS_OTH_T;GLSARL;N;USD;Y;Y;;;Y;EN_GLSARL;;;;Global Luxembourg S.a.r.l.
GTH_OS_OTH_T;GLFSCA;N;USD;Y;Y;;;Y;EN_GLFSCA;;;;Global Luxembourg Finance S.C.A.
GTH_OS_OTH_T;GTF_BC;N;USD;Y;Y;;;Y;EN_GTF_BC;;;;GTH Global Telecom Finance (B.C.)
GTH_OS_OTH_T;GTH_C;N;CAD;Y;Y;;;Y;EN_GTH_C;;;;GTH Global Telecom Holding (Canada) Limited
GTH_OS_OTH_T;TZIM;N;USD;Y;Y;;;Y;EN_TZIM;;;;Telecel Zimbabwe
VIP_T;SOUTHEASTASIA_T;Y;USD;N;Y;;;N;EN_SOUTHEASTASIA_T;;;;Business Area South East Asia Tax Consolidated
SOUTHEASTASIA_T;GTHKH;N;USD;Y;Y;;;Y;EN_GTHKH;;;;GTH CAMBODIA LTD
SOUTHEASTASIA_T;VIPLAOS;N;LAK;Y;Y;;;Y;EN_VIPLAOS;HPL1_HPL2;;;VimpelCom Lao Company Limited
VIP_TAX;VIPHOLD_T;Y;USD;N;Y;;;N;EN_VIPHOLD_T;;;;VimpelCom Holdings Tax Consolidated
VIPHOLD_T;VIPHOLD_TAX_ADJ;Y;USD;Y;N;;;Y;EN_VIPHOLD_TAX_ADJ;;;;VimpelCom Holdings Tax Adjustments
VIPHOLD_T;VIPFU_HOLDINGS_T;N;USD;N;Y;;;N;EN_VIPFU_HOLDINGS_T;;T_PARENT_2013;;Vimpelcom Fiscal Unity Amsterdam Tax Cons excl. Adj.
VIPHOLD_T;KAZ_OP_TETA_TNS_T;Y;KZT;N;Y;;;N;EN_KAZ_OP_TETA_TNS_T;;;;Kazachstan Teta / TNS Tax Consolidated
KAZ_OP_TETA_TNS_T;TETA;N;KZT;Y;Y;;;Y;EN_TETA;;;;TETA Telecom LLP
KAZ_OP_TETA_TNS_T;TNSPLUS;N;KZT;Y;Y;;;Y;EN_TNSPLUS;;;;TNS-Plus LLP
KAZ_OP_TETA_TNS_T;TNSPLUS_Adj;N;KZT;Y;Y;;;Y;EN_TNSPLUS_Adj;;;;TNS-Plus LLP Adjustments
VIPHOLD_T;INVESTICO;N;USD;Y;Y;;;Y;EN_INVESTICO;;;;Investico Alliance Ltd
VIPHOLD_T;VIPBVI_T;N;USD;N;Y;;;N;EN_VIPBVI_T;;T_PARENT_2013;;VIP BVI AG Consolidated
VIPHOLD_T;TADJIK_T;N;USD;N;Y;;;N;EN_TADJIK_T;;T_PARENT;;Tadjikistan Tax Consolidated
VIPHOLD_T;KYIVSTAR_T;N;UAH;N;Y;;;N;EN_KYIVSTAR_T;;T_PARENT;;Ukraine KSUA Tax Consolidated
VIPHOLD_T;OJSC_T;Y;USD;N;Y;;;N;EN_OJSC_T;;;;OJSC Tax Consolidated
OJSC_T;OJSC_TAX_ADJ;Y;USD;Y;N;;;Y;EN_OJSC_TAX_ADJ;;;;OJSC Tax Adjustments
OJSC_T;OJSCADJ;N;USD;Y;Y;;;Y;EN_OJSCADJ;;;;OJSC Vimpel adjustment
OJSC_T;OJSCADJ_RUB;N;RUB;Y;Y;;;Y;EN_OJSCADJ_RUB;;;;OJSC Vimpel adjustment RUB
OJSC_T;VIPFBV;N;USD;Y;Y;;;Y;EN_VIPFBV;;;;Vimpelcom Finance BV
OJSC_T;VIP_SWISS_T;N;USD;Y;N;;;N;EN_VIP_SWISS_T;;T_PARENT;;Swiss Tax Consolidation
OJSC_T;VIPBV_T;N;USD;N;Y;;;N;EN_VIPBV_T;;T_PARENT_2013;;VIP BV Tax Consolidated
OJSC_T;SOUTHEASTASIA_T;N;USD;N;Y;;;N;EN_SOUTHEASTASIA_T;;;;Business Area South East Asia Tax Consolidated
OJSC_T;RUSSIA_T;N;USD;N;Y;;;N;EN_RUSSIA_T;;;;Russia Tax Consolidated (USD)
OJSC_T;UKR_OJSC_T;Y;UAH;N;Y;;;N;EN_UKR_OJSC_T;;;;Ukraine-OJSC Tax Consolidated
UKR_OJSC_T;UKR_OJSC_TAX_ADJ;Y;UAH;Y;N;;;Y;EN_UKR_OJSC_TAX_ADJ;;;;Ukraine-OJSC Tax Adjustments
UKR_OJSC_T;UKR_T;N;UAH;N;Y;;;N;EN_UKR_T;;T_PARENT;;Ukraine Beeline Tax Consolidated
UKR_OJSC_T;UKR_OS_T;N;UAH;N;Y;;;N;EN_UKR_OS_T;;;;Ukraine Offshores Tax Consolidated
OJSC_T;CIS_OJSC_T;Y;USD;N;Y;;;N;EN_CIS_OJSC_T;;;;CIS-OJSC Tax Consolidated
CIS_OJSC_T;CIS_OJSC_TAX_ADJ;Y;USD;Y;N;;;Y;EN_CIS_OJSC_TAX_ADJ;;;;CIS-OJSC Tax Adjustments
CIS_OJSC_T;CIS_HOLDING_T;N;USD;N;Y;;;N;EN_CIS_HOLDING_T;;;;CIS Holding Tax Consolidated
CIS_OJSC_T;KAZAKH_OJSC_T;Y;USD;N;Y;;;N;EN_KAZAKH_OJSC_T;;;;Kazakhstan-OJSC Tax Consolidated
KAZAKH_OJSC_T;KAZ_OJSC_TAX_ADJ;Y;USD;Y;N;;;Y;EN_KAZ_OJSC_TAX_ADJ;;;;Kazachstan-OJSC Tax Adjustments
KAZAKH_OJSC_T;GTIKAZTEL;N;USD;Y;Y;;;Y;EN_GTIKAZTEL;;;;GTI Kaztel Ltd
KAZAKH_OJSC_T;KAZ_OP_KAR_2DAY_T;Y;KZT;N;Y;;;N;EN_KAZ_OP_KAR_2DAY_T;;;;Kazachstan-OJSC Kartel / Twoday Tax Consolidated
KAZ_OP_KAR_2DAY_T;KARTEL;N;KZT;Y;Y;;;Y;EN_KARTEL;;;;Kar-Tel
KAZ_OP_KAR_2DAY_T;TWODAY;N;KZT;Y;Y;;;Y;EN_TWODAY;;;;2Day Telecom LLP
KAZAKH_OJSC_T;KAZ_OS_T;N;USD;N;Y;;;N;EN_KAZ_OS_T;;;;Kazakhstan Offshores Tax Consolidated
CIS_OJSC_T;CIS_OJSC_WOKZTJ_T;Y;USD;N;Y;;;N;EN_CIS_OJSC_WOKZTJ_T;;;;CIS-OJSC without Kazachstan / Tadjikistan Tax Consolidated
CIS_OJSC_WOKZTJ_T;FREEVALE;N;USD;Y;Y;;;Y;EN_FREEVALE;;;;Freevale Enterprises Inc.
CIS_OJSC_WOKZTJ_T;CISWOKZ_LOC_Adj;N;USD;Y;Y;;;Y;EN_CISWOKZ_LOC_Adj;HPL1;;;CIS without Kazakstan Local Adjustments
CIS_OJSC_WOKZTJ_T;Armen_Adj;N;USD;Y;Y;;;Y;EN_Armen_Adj;HPL2;;;Armenia Adjustments
CIS_OJSC_WOKZTJ_T;Georg_Adj;N;USD;Y;Y;;;Y;EN_Georg_Adj;HPL2;;;Georgia Adjustments
CIS_OJSC_WOKZTJ_T;Kyrgyz_Adj;N;USD;Y;Y;;;Y;EN_Kyrgyz_Adj;HPL2;;;Kyrgyzstan Adjustments
CIS_OJSC_WOKZTJ_T;CISWOKZ_HQ;N;USD;Y;Y;;;Y;EN_CISWOKZ_HQ;HPL1_HPL2;;;CIS without Kazakstan HQ
CIS_OJSC_WOKZTJ_T;UZBEK_T;N;USD;N;Y;;;N;EN_UZBEK_T;;;;Uzbekistan Tax Consolidated
CIS_OJSC_WOKZTJ_T;ARMEN_T;N;USD;N;Y;;;N;EN_ARMEN_T;;;;Armenia Tax Consolidated (USD)
CIS_OJSC_WOKZTJ_T;KYRGYZ_T;N;USD;N;Y;;;N;EN_KYRGYZ_T;;;;Kyrgyzstan Tax Consolidated
CIS_OJSC_WOKZTJ_T;GEORG_T;N;USD;N;Y;;;N;EN_GEORG_T;;;;Georgia Tax Consolidated
TOTAL_ENTITY;TRANSLATE_USD;Y;USD;N;N;;;N;EN_TRANSLATE_USD;;;;USD translation hierarchy
TRANSLATE_USD;DUTCH_Trans_to_USD;Y;USD;N;N;;;N;EN_DUTCH_Trans_to_USD;;;;Translate Dutch entities to USD
DUTCH_Trans_to_USD;VCESOP_EUR;N;EUR;Y;Y;;;Y;EN_VCESOP_EUR;;;;VC Esop N.V.
DUTCH_Trans_to_USD;GOLDENTELLTD;N;RUB;Y;Y;;;Y;EN_GOLDENTELLTD;;;;Golden Telecom Ltd
DUTCH_Trans_to_USD;DUTCH_OS_T;N;EUR;N;Y;;;N;EN_DUTCH_OS_T;;T_PARENT;;Dutch Offshores Tax Consolidated
DUTCH_Trans_to_USD;DUTCH_OS_TAX;N;EUR;Y;N;;;Y;EN_DUTCH_OS_TAX;;T_DUTCH_OS_T;;Dutch Offshores Tax
DUTCH_Trans_to_USD;GTNBV;N;EUR;Y;Y;;;Y;EN_GTNBV;;;;Global Telecom Netherlands BV
DUTCH_Trans_to_USD;THCML;N;CAD;Y;Y;;;Y;EN_THCML;;;;Telecom Holding Canada (Malta) Limited
DUTCH_Trans_to_USD;GTH;N;EGP;Y;Y;;;Y;EN_GTH;HPL1_HPL2;;;Global Telecom Holding S.A.E.
DUTCH_Trans_to_USD;GTH_ADJ;N;EGP;Y;Y;;;Y;EN_GTH_ADJ;;;;Global Telecom Holding S.A.E. adjustments
TRANSLATE_USD;OJSC_Trans_to_USD;Y;USD;N;N;;;N;EN_OJSC_Trans_to_USD;;;;Translate OJSC entities to USD
OJSC_Trans_to_USD;OJSCADJ_RUB;N;RUB;Y;Y;;;Y;EN_OJSCADJ_RUB;;;;OJSC Vimpel adjustment RUB
TRANSLATE_USD;RUS_Trans_to_USD;Y;USD;N;N;;;N;EN_RUS_Trans_to_USD;;;;Translate RUS entities to USD
RUS_Trans_to_USD;RUSSIA_TAX;N;RUB;Y;N;;;Y;EN_RUSSIA_TAX;;T_RUSSIA_RUR_T_2014;;Russia Operations Tax
RUS_Trans_to_USD;RUSSIA_OP_T;N;RUB;N;Y;;;N;EN_RUSSIA_OP_T;;T_PARENT_2014;;Russia Operations Tax Consolidated
RUS_Trans_to_USD;RUSSIA_OP_TAX;N;RUB;Y;N;;;Y;EN_RUSSIA_OP_TAX;;T_RUSSIA_OP_T;;Russia Operations Tax
RUS_Trans_to_USD;RUSSIA_OS_T;N;RUB;N;Y;;;N;EN_RUSSIA_OS_T;;T_PARENT_2014;;Russia Offshores Tax Consolidated
RUS_Trans_to_USD;RUSSIA_OS_BEL_T;N;RUB;N;Y;;;N;EN_RUSSIA_OS_BEL_T;;T_PARENT_2014;;Russia Offshores Belgium Consolidated
RUS_Trans_to_USD;RUSSIA_OS_BEL_TAX;N;RUB;Y;N;;;Y;EN_RUSSIA_OS_BEL_TAX;;T_RUSSIA_OS_BEL_T;;Russia Offshores Belgium Tax
RUS_Trans_to_USD;RUSSIA_OS_CYP_T;N;RUB;N;Y;;;N;EN_RUSSIA_OS_CYP_T;;T_PARENT_2014;;Russia Offshores Cyprus Tax Consolidated
RUS_Trans_to_USD;RUSSIA_OS_CYP_TAX;N;RUB;Y;N;;;Y;EN_RUSSIA_OS_CYP_TAX;;T_RUSSIA_OS_CYP_T;;Russia Offshores Cyprus Tax
RUS_Trans_to_USD;RUSSIA_OS_BVI_T;N;RUB;N;Y;;;N;EN_RUSSIA_OS_BVI_T;;T_PARENT_2014;;Russia Offshores BVI Tax Consolidated
RUS_Trans_to_USD;RUSSIA_OS_BVI_TAX;N;RUB;Y;N;;;Y;EN_RUSSIA_OS_BVI_TAX;;T_RUSSIA_OS_BVI_T;;Russia Offshores BVI Tax
RUS_Trans_to_USD;RUSSIA_OS_USA_T;N;RUB;N;Y;;;N;EN_RUSSIA_OS_USA_T;;T_PARENT_2014;;Russia Offshores USA Tax Consolidated
RUS_Trans_to_USD;RUSSIA_OS_USA_TAX;N;RUB;Y;N;;;Y;EN_RUSSIA_OS_USA_TAX;;T_RUSSIA_OS_USA_T;;Russia Offshores USA Tax
RUS_Trans_to_USD;RUSSIA_OS_CZECH_T;N;RUB;N;Y;;;N;EN_RUSSIA_OS_CZECH_T;;T_PARENT_2014;;Russia Offshores Czechia Tax Consolidated
RUS_Trans_to_USD;RUSSIA_OS_CZECH_TAX;N;RUB;Y;N;;;Y;EN_RUSSIA_OS_CZECH_TAX;;T_RUSSIA_OS_CZECH_T;;Russia Offshores Czechia Tax
TRANSLATE_USD;UKR_Trans_to_USD;Y;USD;N;N;;;N;EN_UKR_Trans_to_USD;;;;Translate UKR entities to USD
UKR_Trans_to_USD;KSGROUP_UAH_T;N;UAH;N;Y;;;N;EN_KSGROUP_UAH_T;;;;Ukraine Group Tax Consolidated (UAH)
UKR_Trans_to_USD;UKR_TAX_ADJ;N;UAH;Y;N;;;Y;EN_UKR_TAX_ADJ;;;;Ukraine Group Tax Consolidated Adjustment (UAH)
UKR_Trans_to_USD;UKR_OP_T;N;UAH;N;Y;;;N;EN_UKR_OP_T;;;;Ukraine Operations Tax Consolidated
UKR_Trans_to_USD;KYIVSTAR_T;N;UAH;N;Y;;;N;EN_KYIVSTAR_T;;T_PARENT;;Ukraine KSUA Tax Consolidated
UKR_Trans_to_USD;KYIVSTAR_TAX;N;UAH;Y;N;;;Y;EN_KYIVSTAR_TAX;;T_KYIVSTAR_T;;Ukraine KSUA Tax
UKR_Trans_to_USD;UKR_T;N;UAH;N;Y;;;N;EN_UKR_T;;T_PARENT;;Ukraine Beeline Tax Consolidated
UKR_Trans_to_USD;UKRAINE_TAX;N;UAH;Y;N;;;Y;EN_UKRAINE_TAX;;T_UKR_T;;Ukraine Beeline Tax
UKR_Trans_to_USD;UKR_OS_T;N;UAH;N;Y;;;N;EN_UKR_OS_T;;;;Ukraine Offshores Tax Consolidated
UKR_Trans_to_USD;UKR_OS_USA_T;N;UAH;N;Y;;;N;EN_UKR_OS_USA_T;;T_PARENT;;Ukraine Offshores USA Tax Consolidated
UKR_Trans_to_USD;UKR_OS_USA_TAX;N;UAH;Y;N;;;Y;EN_UKR_OS_USA_TAX;;T_UKR_OS_USA_T;;Ukraine Offshores USA Tax
UKR_Trans_to_USD;UKR_OS_CYP_T;N;UAH;N;Y;;;N;EN_UKR_OS_CYP_T;;T_PARENT;;Ukraine Offshores Cyrpus Tax Consolidated
UKR_Trans_to_USD;UKR_OS_CYP_TAX;N;UAH;Y;N;;;Y;EN_UKR_OS_CYP_TAX;;T_UKR_OS_CYP_T;;Ukraine Offshores Cyprus Tax
UKR_Trans_to_USD;UKR_OJSC_T;N;UAH;N;Y;;;N;EN_UKR_OJSC_T;;;;Ukraine-OJSC Tax Consolidated
UKR_Trans_to_USD;UKR_OJSC_TAX_ADJ;N;UAH;Y;N;;;Y;EN_UKR_OJSC_TAX_ADJ;;;;Ukraine-OJSC Tax Adjustments
TRANSLATE_USD;KZT_Trans_to_USD;Y;USD;N;N;;;N;EN_KZT_Trans_to_USD;;;;Translate KZT entities to USD
KZT_Trans_to_USD;KAZ_OP_TETA_TNS_T;N;KZT;N;Y;;;N;EN_KAZ_OP_TETA_TNS_T;;;;Kazachstan Teta / TNS Tax Consolidated
KZT_Trans_to_USD;TETA;N;KZT;Y;Y;;;Y;EN_TETA;;;;TETA Telecom LLP
KZT_Trans_to_USD;TNSPLUS;N;KZT;Y;Y;;;Y;EN_TNSPLUS;;;;TNS-Plus LLP
KZT_Trans_to_USD;TNSPLUS_Adj;N;KZT;Y;Y;;;Y;EN_TNSPLUS_Adj;;;;TNS-Plus LLP Adjustments
KZT_Trans_to_USD;KAZ_OP_T;N;KZT;N;Y;;;N;EN_KAZ_OP_T;;T_PARENT_2013;;Kazakhstan Operations Tax Consolidated (excl. Adj)
KZT_Trans_to_USD;KAZ_TAX;N;KZT;Y;N;;;Y;EN_KAZ_TAX;;T_KAZ_OP_T_2013;;Kazchstan Operations Tax
KZT_Trans_to_USD;KARTEL;N;KZT;Y;Y;;;Y;EN_KARTEL;;;;Kar-Tel
KZT_Trans_to_USD;TWODAY;N;KZT;Y;Y;;;Y;EN_TWODAY;;;;2Day Telecom LLP
KZT_Trans_to_USD;KEM;N;KZT;Y;Y;;;Y;EN_KEM;;;;Kazeuromobile LLP
KZT_Trans_to_USD;KAZ_OP_KAR_2DAY_T;N;KZT;N;Y;;;N;EN_KAZ_OP_KAR_2DAY_T;;;;Kazachstan-OJSC Kartel / Twoday Tax Consolidated
TRANSLATE_USD;UZB_Trans_to_USD;Y;USD;N;N;;;N;EN_UZB_Trans_to_USD;;;;Translate UZB entities to USD
UZB_Trans_to_USD;UZB_T_UZS;N;UZS;N;Y;;;N;EN_UZBEK_T_UZS;;;;Uzbekistan Operations Tax Consolidated - Som
UZB_Trans_to_USD;UNITEL_UZS;N;UZS;Y;Y;;;Y;EN_UNITEL_UZS;;;;Unitel LLC - Som
UZB_Trans_to_USD;BUZTON_UZS;N;UZS;Y;Y;;;Y;EN_BUZTON_UZS;;;;Joint Venture Buzton Ltd Liability Company - Som
TRANSLATE_USD;ARM_Trans_to_USD;Y;USD;N;N;;;N;EN_ARM_Trans_to_USD;;;;Translate ARM entities to USD
ARM_Trans_to_USD;ARMENTEL;N;AMD;Y;Y;;;Y;EN_ARMENTEL;;;;Armenia Telephone Company
ARM_Trans_to_USD;ARMENCELL;N;AMD;Y;Y;;;Y;EN_ARMENCELL;;;;Armencell CJSC
TRANSLATE_USD;KRG_Trans_to_USD;Y;USD;N;N;;;N;EN_KRG_Trans_to_USD;;;;Translate KRG entities to USD
KRG_Trans_to_USD;KYR_T;N;KGS;N;Y;;;N;EN_KYR_T;;T_PARENT;;Kyrgyzstan Operations Tax Consolidated
KRG_Trans_to_USD;KYRGYZ_TAX;N;KGS;Y;N;;;Y;EN_KYRGYZ_TAX;;T_KYR_T;;Kyrgyzstan Operations Tax
TRANSLATE_USD;GEO_Trans_to_USD;Y;USD;N;N;;;N;EN_GEO_Trans_to_USD;;;;Translate GEO entities to USD
GEO_Trans_to_USD;GEORG_OP_T;N;GEL;N;Y;;;N;EN_GEORG_OP_T;;T_PARENT;;Georgia Operations Tax Consolidated
GEO_Trans_to_USD;GEORG_TAX;N;GEL;Y;N;;;Y;EN_GEORG_TAX;;T_GEORG_OP_T;;Georgia Operations Tax
TRANSLATE_USD;LAO_Trans_to_USD;Y;USD;N;N;;;N;EN_LAO_Trans_to_USD;;;;Translate LAO entities to USD
LAO_Trans_to_USD;VIPLAOS;N;LAK;Y;Y;;;Y;EN_VIPLAOS;HPL1_HPL2;;;VimpelCom Lao Company Limited
TRANSLATE_USD;WIND_Trans_to_USD;Y;USD;N;N;;;N;EN_WIND_Trans_to_USD;;;;Translate WIND entities to USD
WIND_Trans_to_USD;WIND_TAX_ADJ;N;EUR;Y;N;;;Y;EN_WIND_TAX_ADJ;;;;Wind Telecom S.p.A. Tax Adjustment
WIND_Trans_to_USD;WT_ADJ;N;EUR;Y;Y;;;Y;EN_WT_ADJ;;;;Wind Telecom Group Adjustments Entity
WIND_Trans_to_USD;OTSE_NEW;N;EUR;Y;Y;;;Y;EN_OTSE_NEW;;;;Orascom Telecom Service Europe
WIND_Trans_to_USD;WINDTELCO_ADJ;N;EUR;Y;Y;;;Y;EN_WINDTELCO_ADJ;HPL1_HPL2;;;Wind Telecomunicazioni SpA Adjustments
WIND_Trans_to_USD;VTHBV;N;EUR;Y;Y;;;Y;EN_VTHBV;;;;VTHBV - VimpelCom Telecom Holding BV
WIND_Trans_to_USD;WINDACQHOLD_ADJ;N;EUR;Y;Y;;;Y;EN_WINDACQHOLD_ADJ;;;;Wind Acquisition Holdings Finance SpA Adjustments
TRANSLATE_USD;WINDITALY_Trans_to_USD;Y;USD;N;N;;;N;EN_WINDITALY_Trans_to_USD;;;;Translate WINDITALY entities to USD
WINDITALY_Trans_to_USD;WIND_ITALY_T;N;EUR;N;Y;;;N;EN_WIND_ITALY_T;;;;Wind Italy Tax Consolidated
WINDITALY_Trans_to_USD;WT;N;EUR;Y;Y;;;Y;EN_WT;HPL1_HPL2;;;Wind Telecom S.p.A.
WINDITALY_Trans_to_USD;WAHF_SPA_T;N;EUR;N;Y;;;N;EN_WAHF_SPA_T;;T_PARENT;;Whaf Spa Tax Consolidated
WINDITALY_Trans_to_USD;WAHF_ITA_TAX;N;EUR;Y;N;;;Y;EN_WAHF_ITA_TAX;;T_WAHF_SPA_T;;Wahf Spa Tax
TRANSLATE_USD;WINDLUX_Trans_to_USD;Y;USD;N;N;;;N;EN_WINDLUX_Trans_to_USD;;;;Translate WINDLUX entities to USD
WINDLUX_Trans_to_USD;WIND_LUXBG_T;N;EUR;N;Y;;;N;EN_WIND_LUXBG_T;;;;Wind Luxembourg Tax Consolidated
WINDLUX_Trans_to_USD;LUX_3_T;N;EUR;N;Y;;;N;EN_LUX_3_T;;;;Luxembourg 3 Tax Consolidated
WINDLUX_Trans_to_USD;WINDACQFINII;N;EUR;Y;Y;;;Y;EN_WINDACQFINII;;;;Wind Acquisition Finance II S.A.
WINDLUX_Trans_to_USD;WINDACQFIN;N;EUR;Y;Y;;;Y;EN_WINDACQFIN;;;;Wind Acquisition Finance S.A.
WINDLUX_Trans_to_USD;WINDFIN;N;EUR;Y;Y;;;Y;EN_WINDFIN;;;;Wind Finance SL S.A.
WINDLUX_Trans_to_USD;WAF;N;EUR;Y;N;;;Y;EN_WAF;;;;WAF - Tax history only
WINDLUX_Trans_to_USD;WAF_II;N;EUR;Y;N;;;Y;EN_WAF_II;;;;WAF_II - Tax history only
WINDLUX_Trans_to_USD;WF_SL;N;EUR;Y;N;;;Y;EN_WF_SL;;;;WF_SL - Tax history only
WINDLUX_Trans_to_USD;LUX_2_T;N;EUR;N;Y;;;N;EN_LUX_2_T;;;;Luxembourg 2 Tax Consolidated
WINDLUX_Trans_to_USD;WINDACQHOLDFIN;N;EUR;Y;Y;;;Y;EN_WINDACQHOLDFIN;;;;Wind Acquisition Holdings Finance SA
WINDLUX_Trans_to_USD;WINDACQHOLDFINII;N;EUR;Y;Y;;;Y;EN_WINDACQHOLDFINII;;;;Wind Acquisition Holdings Finance II SA
WINDLUX_Trans_to_USD;LUX_1_T;N;EUR;N;Y;;;N;EN_LUX_1_T;;;;Luxembourg 1 Tax Consolidated
WINDLUX_Trans_to_USD;WC_SARL_T;N;EUR;N;Y;;;N;EN_WC_SARL_T;;T_PARENT;;Weather Capital S.a.r.l Tax Consolidated
WINDLUX_Trans_to_USD;WC_SARL_TAX;N;EUR;Y;N;;;Y;EN_WC_SARL_TAX;;T_WC_SARL_T;;Weather Capital S.a.r.l Tax
WINDLUX_Trans_to_USD;WCSARL;N;EUR;Y;Y;;;Y;EN_WCSARL;;;;WC_SARL - Weather Capital S.a.r.l
WINDLUX_Trans_to_USD;WC_SARL_EUR;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR;HPL1_HPL2;;;Weather Capital S.a.r.l
WINDLUX_Trans_to_USD;WC_SARL_EUR_B;N;EUR;Y;Y;;;Y;EN_WC_SARL_EUR_B;;;;Weather Capital S.a.r.l BRANCH
WINDLUX_Trans_to_USD;WCSP;N;EUR;Y;Y;;;Y;EN_WCSP;;;;WCSP - Weather Capital Special Purposes I SA
WINDLUX_Trans_to_USD;KLAROLUX;N;EUR;Y;Y;;;Y;EN_KLAROLUX;;;;KLAROLUX - Klarolux Investments Sarl
WINDLUX_Trans_to_USD;VIPLUXHOLDSARL;N;EUR;Y;Y;;;Y;EN_VIPLUXHOLDSARL;;;;VimpelCom Luxembourg Holdings SARL
TRANSLATE_USD;GTH_Trans_to_USD;Y;USD;N;N;;;N;EN_GTH_Trans_to_USD;;;;Translate GTH entities to USD
GTH_Trans_to_USD;GTH_TAX_ADJ;N;EUR;Y;N;;;Y;EN_GTH_TAX_ADJ;;;;GTH Tax Adjustment
GTH_Trans_to_USD;TCAR;N;XAF;Y;Y;;;Y;EN_TCAR;;;;Telecel Centrafrique S.A.
GTH_Trans_to_USD;TUCOM;N;BIF;Y;Y;;;Y;EN_TUCOM;;;;U-Com Burundi S.A.
GTH_Trans_to_USD;GTH_OS_EGP_T;N;EGP;N;Y;;;N;EN_GTH_OS_EGP_T;;T_PARENT;;GTH Offhores Tax Consolidated (EGP)
GTH_Trans_to_USD;GTH_OS_TAX;N;EGP;Y;N;;;Y;EN_GTH_OS_TAX;;T_GTH_OS_EGP_T;;GTH Offhores Tax
GTH_Trans_to_USD;RING_T;N;EGP;N;Y;;;N;EN_RING_T;;T_SUB_PARENT;;Ring Tax Consolidated
GTH_Trans_to_USD;GTH_OS_OTH_T;N;EGP;N;Y;;;N;EN_GTH_OS_OTH_T;;T_SUB_PARENT;;GTH Offhores Other Tax Consolidated
TRANSLATE_USD;ALG_Trans_to_USD;Y;USD;N;N;;;N;EN_ALG_Trans_to_USD;;;;Translate ALG entities to USD
ALG_Trans_to_USD;ALGERIA_T;N;DZD;N;Y;;;N;EN_ALGERIA_T;;T_PARENT;;Algeria Tax Consolidated
ALG_Trans_to_USD;ALGERIA_TAX;N;DZD;Y;N;;;Y;EN_ALGERIA_TAX;;T_ALGERIA_T;;Algeria Tax
TRANSLATE_USD;PAK_Trans_to_USD;Y;USD;N;N;;;N;EN_PAK_Trans_to_USD;;;;Translate PAK entities to USD
PAK_Trans_to_USD;PAKISTAN_T;N;PKR;N;Y;;;N;EN_PAKISTAN_T;;;;Pakistan Tax Consolidated
PAK_Trans_to_USD;WBANK;N;PKR;Y;Y;;;Y;EN_WBANK;HPL1_HPL2;;;Waseela Microfinance Bank Limited
PAK_Trans_to_USD;PAKISTAN_WOWBANK_T;N;PKR;N;Y;;;N;EN_PAKISTAN_WOWBANK_T;;T_PARENT;;Pakistan without WBank Tax Consolidated
PAK_Trans_to_USD;PAKISTAN_TAX;N;PKR;Y;N;;;Y;EN_PAKISTAN_TAX;;T_PAKISTAN_WOWBANK_T;;Pakistan Tax
TRANSLATE_USD;BGD_Trans_to_USD;Y;USD;N;N;;;N;EN_BGD_Trans_to_USD;;;;Translate BGD entities to USD
BGD_Trans_to_USD;BANGLADESH_T;N;BDT;N;Y;;;N;EN_BANGLADESH_T;;T_PARENT;;Bangladesh Tax Consolidated
BGD_Trans_to_USD;BANGLADESH_TAX;N;BDT;Y;N;;;Y;EN_BANGLADESH_TAX;;T_BANGLADESH_T;;Bangladesh Tax

!Hierarchies=Account
'Parent;Child;IsPrimary;ConsolidationAccountType;IsCalculated;IsConsolidated;PlugAccount;CustomTopMemberAuditDim;CustomTopMemberCostCenterDisc2;CustomTopMemberMktOvr;CustomTopMemberMovProd;CustomTopMemberRelPartDisc1;CustomTopMemberVarLob;CustomTopMemberCustType;NumDecimalPlaces;EnableCustomAggrAuditDim;EnableCustomAggrCostCenterDisc2;EnableCustomAggrMktOvr;EnableCustomAggrMovProd;EnableCustomAggrRelPartDisc1;EnableCustomAggrVarLob;EnableCustomAggrCustType;XBRLTags;ICPTopMember;IsICP;UsesLineItems;SecurityClass;EnableDataAudit;CalcAttribute;SubmissionGroup;UserDefined1;UserDefined2;UserDefined3;Alias=English
#root;[None];Y;Asset;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;None
#root;[Active];Y;BalanceRecurring;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[Consol1];Y;Balance;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[Consol2];Y;Balance;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[Consol3];Y;Balance;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[DOWN];Y;Balance;N;N;;;;;;;;;4;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[Method];Y;Balance;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[PCON];Y;Balance;N;N;;;;;;;;;4;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[PCTRL];Y;Balance;N;N;;;;;;;;;4;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[POWN];Y;Balance;N;N;;;;;;;;;4;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[Shares%Owned];Y;Balance;Y;N;;;;;;;;;4;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[SharesOutstanding];Y;Balance;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;;N;;1;;;;
#root;[SharesOwned];Y;Balance;N;N;;;;;;;;;4;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[Voting%Owned];Y;Balance;Y;N;;;;;;;;;4;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;[VotingOutstanding];Y;Balance;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;;N;;1;;;;
#root;[VotingOwned];Y;Balance;N;N;;;;;;;;;4;N;N;N;N;N;N;N;;;Y;N;;N;;1;;;;
#root;BS_EXTERNAL;Y;GroupLabel;Y;Y;;;;;;;;;0;N;N;N;N;N;N;N;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Balance Sheet (External)
BS_EXTERNAL;1000000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Total Assets
1000000;1100000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Non Current Assets (NCA)
1100000;1110000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Property and equipment
1110000;1110101;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunications equipment
1110000;1110200;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Land, buildings, constructions and leasehold improvements
1110200;1110201;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Land
1110200;1110202;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Buildings, constructions and leasehold improvements
1110000;1110301;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Vehicles, office equipment
1110000;1110401;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Measuring Equipment
1110000;1110501;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other equipment
1110000;1110600;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equipment not installed and assets under construction
1110600;1110601;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Equipment not installed
1110600;1110602;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Installation work capitalized
1110600;1110603;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Assets under construction
1110000;1110701;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Advances for property and equipment
1100000;1120000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Intangible assets (excl. goodwill)
1120000;1120101;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunications licenses, frequencies and permission
1120000;1120200;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchased and internally developed software
1120200;1120201;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchased software
1120200;1120202;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Internally developed software
1120000;1120301;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Brands and trademarks
1120000;1120400;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer relationships
1120400;1120401;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer relationships - acquired in business combination
1120400;1120402;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer relationships - customer acquisition
1120000;1120501;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telephone line capacity
1120000;1120601;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other intangible assets and assets development
1120000;1120701;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advances for intangible assets
1120000;1120801;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advances for licenses
1100000;1130101;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Goodwill
1100000;1140101;Y;Asset;N;Y;6300401;VIP_TOT;;OVERRIDE;TF_Inv_1;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;INVESTMENT;PINT_INV;Investments in subsidiaries
1100000;1150000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Investments in associates, jointly controlled entities and accounted for at cost
1150000;1150101;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;TF_Inv_2;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investments in associates
1150000;1150201;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;TF_Inv_2;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investments in jointly controlled entities (JCE)
1150000;1150301;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;TF_Inv_3;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;INVESTMENT;;Investment accounted for at cost
1100000;IV_PLUG;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Investments Plug Account
IV_PLUG;IVL_PLUG;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;;;Investments Plug Account
IV_PLUG;IVLP_PLUG;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investments Plug Account - affiliates
1100000;1160101;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Deferred Tax Assets
1100000;1170000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other financial assets - NCA
1170000;1170100;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans granted to associates - NCA
1170100;1170101;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans granted to associates - principal - NCA
1170100;1170102;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans granted to associates - acc. impairment - NCA
1170100;1170103;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest receivable from associates - NCA
1170000;1170200;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans granted to JCE - NCA
1170200;1170201;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans granted to JCE - principal - NCA
1170200;1170202;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans granted to JCE - acc. impairment - NCA
1170200;1170203;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest receivable from JCE - NCA
1170000;1170300;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - NCA
1170300;1170301;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - NCA
1170300;1170302;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank deposits - restricted - NCA
1170300;1170303;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest receivable on bank deposits - NCA
1170000;1170400;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receivables within VimpelCom – NCA
1170400;1170401;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans receivable within VimpelCom - principal - NCA
1170400;1170402;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans receivable within VimpelCom - interest accrued - NCA
1170400;1170403;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans receivable within VimpelCom – unamortized fees – NCA
1170000;1170500;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets at FVTPL - NCA
1170500;1170501;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets at FVTPL - cost - NCA
1170500;1170502;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets at FVTPL - FV adjustment - NCA
1170500;1170503;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets at FVTPL - acc. impairment - NCA
1170000;1170600;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets available for sale - NCA
1170600;1170601;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets available for sale - cost - NCA
1170600;1170602;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets available for sale - FV adjustment - NCA
1170600;1170603;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets available for sale - acc. impairment - NCA
1170000;1170700;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets held to maturity - NCA
1170700;1170701;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets held to maturity - cost - NCA
1170700;1170702;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets held to maturity - FV adjustment - NCA
1170700;1170703;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets held to maturity - interest receivable - NCA
1170700;1170704;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets held to maturity - acc. impairment - NCA
1170000;1170800;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receivables from investments purchase / sale- NCA
1170800;1170801;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables from sale of investments - NCA
1170800;1170802;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Advances for purchase of investments - NCA
1170000;1170900;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - NCA
1170900;1170901;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cross-currency interest rate exchange contracts - derivatives - NCA
1170900;1170902;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Foreign exchange contracts - derivatives - NCA
1170900;1170903;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest rate exchange contracts - derivatives - NCA
1170900;1170904;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Embedded derivatives on financial liabilities - NCA
1170900;1170905;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Derivatives over non-controlling interest - derivatives - NCA
1170900;1170906;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest receivable on derivatives - NCA
1170000;1171000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other financial assets - NCA
1171000;1171001;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Security deposits - NCA
1171000;1171002;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other investment - NCA
1171000;1171003;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other loans granted - NCA
1100000;1180000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other non-financial assets - NCA
1180000;1180101;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Input value added tax - NCA
1180000;1180201;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Advance to suppliers and prepayments - NCA
1180000;1180301;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Deferred costs related to connection fees - NCA
1180000;1180401;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid taxes, other than income taxes - NCA
1180000;1180501;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other non-financial assets - NCA
1100000;1181000;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Income taxes advances - NCA
1000000;1200000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Current Assets (CA)
1200000;1210000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Inventories
1210000;1210100;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Inventories - cost
1210100;1210101;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telephone equipment and accessories
1210100;1210102;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;SIM-cards
1210100;1210103;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Scratch cards and connection packages
1210100;1210104;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advertising and info materials
1210100;1210105;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Equipment for resale
1210100;1210106;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other inventory
1210000;1210201;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Inventory - obsolescence allowance
1200000;1220000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Trade and other receivables
1220000;1220100;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Trade  receivables
1220100;1220101;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables due from customers, gross
1220100;1220102;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables due for roaming, gross
1220100;1220103;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables due for interconnect, gross
1220100;1220104;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables due from dealers and distributors, gross
1220100;1220105;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Accrued receivables on roaming discounts, gross
1220100;1220106;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other trade receivables, gross
1220100;1220107;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables due for Traffic Termination, gross
1220000;1220200;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Accounts receivable from sale of long-lived assets
1220200;1220207;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Accounts receivable from sale of property and equipment
1220200;1220208;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Accounts receivable from sale of intangible assets
1220000;1220300;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other receivables
1220300;1220301;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Dividends receivable
1220300;1220302;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Accounts receivable - management fees
1220300;1220303;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other receivables
1220000;1220400;Y;Asset;Y;Y;;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts
1220400;1220401;Y;Asset;N;Y;4331101;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allowance for doubtful accounts - receivables due from customers
1220400;1220402;Y;Asset;N;Y;4331102;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allowance for doubtful accounts - receivables due  for roaming
1220400;1220403;Y;Asset;N;Y;4331103;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allowance for doubtful accounts - receivables due  for interconnect
1220400;1220404;Y;Asset;N;Y;4331104;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allowance for doubtful accounts - receivables due from dealers and distributors
1220400;1220405;Y;Asset;N;Y;4331105;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allowance for doubtful accounts - other trade receivables
1220400;1220406;Y;Asset;N;Y;4331106;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allow. for doubtful accounts-accounts receivable from sale of long-lived assets
1200000;1230000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other non-financial current assets
1230000;1230101;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Input value added tax - CA
1230000;1230102;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Advance to suppliers and prepayments - CA
1230000;1230103;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Current portion of deferred cost related to connection fees - CA
1230000;1230104;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid taxes, other than income taxes - CA
1230000;1230105;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other non-financial assets - CA
1230000;1230106;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Indemnification assets - CA
1200000;1240000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Current income tax and withholding tax advances
1240000;1240101;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax advances
1240000;1240201;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax advances
1200000;1250000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other financial assets  - CA
1250000;1250100;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans granted to associates - CA
1250100;1250101;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans granted to associates - principal - CA
1250100;1250103;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans granted to associates - acc. impairment - CA
1250100;1250102;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest receivable from associates - CA
1250000;1250200;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans granted to JCE - CA
1250200;1250201;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans granted to JCE - principal - CA
1250200;1250203;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans granted to JCE - acc. impairment - CA
1250200;1250202;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest receivable from JCE - CA
1250000;1250300;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - CA
1250300;1250301;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - CA
1250300;1250302;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank deposits - restricted - CA
1250300;1250303;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest receivable on bank deposits - CA
1250000;1250400;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receivables within VimpelCom – CA
1250400;1250401;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans receivable within VimpelCom - principal - CA
1250400;1250402;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans receivable within VimpelCom - interest accrued - CA
1250400;1250403;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other receivables within VimpelCom – CA
1250400;1250404;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans receivable within VimpelCom – unamortized fees – CA
1250000;1250500;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets at FVTPL - CA
1250500;1250501;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets at FVTPL - cost - CA
1250500;1250502;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets at FVTPL - FV adjustment - CA
1250500;1250503;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets at FVTPL - acc. impairment - CA
1250000;1250600;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets available for sale - CA
1250600;1250601;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets available for sale - cost - CA
1250600;1250602;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets available for sale - FV adjustment - CA
1250600;1250603;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets available for sale - acc. impairment - CA
1250000;1250700;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets held to maturity - CA
1250700;1250701;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets held to maturity - cost - CA
1250700;1250702;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets held to maturity - FV adjustment - CA
1250700;1250703;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets held to maturity - interest receivable- CA
1250700;1250704;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Financial assets held to maturity - acc. impairment - CA
1250000;1250800;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receivables from investments purchase / sale- CA
1250800;1250801;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables from sale of investments - CA
1250800;1250802;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Advances for purchase of investments - CA
1250000;1250900;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - CA
1250900;1250901;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cross-currency interest rate exchange contracts - derivatives - CA
1250900;1250902;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Foreign exchange contracts - derivatives - CA
1250900;1250903;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest rate exchange contracts - derivatives - CA
1250900;1250904;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Embedded derivatives on financial liabilities - derivatives - CA
1250900;1250905;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Derivatives over non-controlling interest - derivatives - CA
1250900;1250906;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest receivable on derivatives - CA
1250000;1251000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other financial assets - CA
1251000;1251001;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Security deposits - CA
1251000;1251002;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Restricted cash - CA
1251000;1251003;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other investment - CA
1251000;1251004;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other loans granted - CA
1251000;1251005;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other financial assets- CA
1251000;1251006;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Advances for scheduled interest repayments
1200000;1260000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalents
1260000;1260100;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalents at banks and on hand
1260100;1260101;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Petty cash
1260100;1260102;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bank accounts
1260100;1260103;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash equivalents
1260100;1260104;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash in transit
1260000;1260200;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Current deposits shorter-than-three months and money market funds
1260200;1260201;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Deposits shorter-than-three months
1260200;1260202;Y;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Money market funds
1000000;1300000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Assets held for sale
1300000;1370101;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Assets held for sale (excl. cash and cash equivalents)
1370101;1370101_NR;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Assets held for sale (excl. cash and cash equivalents)
1370101;1370101_ELIM_ST_PLUG;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Assets held for sale (excl. cash and cash equivalents)
1370101;1370101_ELIM_LT_PLUG;Y;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Assets held for sale (excl. cash and cash equivalents)
1370101;1370101_PINT;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PINT_INV;Assets held for sale (excl. cash and cash equivalents)
1370101;1370101_PROV;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Assets held for sale (excl. cash and cash equivalents)
1300000;1380101;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalents attributable to assets held for sale
1380101;1380101_NR;Y;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalents attributable to assets held for sale
1380101;1380101_ELIM_ST_PLUG;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cash and cash equivalents attributable to assets held for sale
1300000;1390101;Y;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Assets held for sale (individual)
BS_EXTERNAL;2000000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Total Liabilities and Equity
2000000;2100000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equity
2100000;2110000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equity attributable to equity owners of the parent
2110000;2110100;Y;Liability;Y;Y;;VIP_TOT;;;TF_Capital_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Issued capital
2110100;2110101;Y;Liability;N;Y;;VIP_TOT;;OVERRIDE;TF_Capital_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI_CAP;Common shares
2110100;2110102;Y;Liability;N;Y;;VIP_TOT;;OVERRIDE;TF_Capital_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI_CAP;Convertible voting preferred shares
2110000;2110201;Y;Liability;N;Y;;VIP_TOT;;OVERRIDE;TF_Capital_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI_CAP;Capital surplus
2110000;2110301;Y;Liability;N;Y;;VIP_TOT;;OVERRIDE;TF_Capital_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;;Treasury shares
2110000;2110400;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other capital reserves
2110400;2110401;Y;Liability;N;Y;2120101;VIP_TOT;;OVERRIDE;TF_Reserve_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Share-based compensation reserve
2110400;2110402;Y;Liability;N;Y;2120102;VIP_TOT;;OVERRIDE;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Cash flow hedge reserve
2110400;2110403;Y;Liability;N;Y;2120103;VIP_TOT;;OVERRIDE;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Cash flow hedge reserve - tax effect
2110400;2110404;Y;Liability;N;Y;2120104;VIP_TOT;;OVERRIDE;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Gain/loss arising on reval. of fin. assets at FV through other comprehensive inc
2110400;2110405;Y;Liability;N;Y;2120105;VIP_TOT;;OVERRIDE;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Gain/loss arising on reval of fin asset at FV through other compr Inc-tax effect
2110400;2110406;Y;Liability;N;Y;2120106;VIP_TOT;;OVERRIDE;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Other revaluation reserve
2110400;2110407;Y;Liability;N;Y;2120107;VIP_TOT;;OVERRIDE;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Other revaluation reserve - tax effect
2110400;2110408;Y;Liability;N;Y;2120108;VIP_TOT;;OVERRIDE;TF_Reserve_3;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Reserve related to actuarial gain/loss
2110400;2110409;Y;Liability;N;Y;2120109;VIP_TOT;;OVERRIDE;TF_Reserve_3;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Reserve related to actuarial gain/loss-tax effect
2110400;2110410;Y;Liability;N;Y;2120110;VIP_TOT;;OVERRIDE;TF_Reserve_4;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Legal reserves
2110400;2110411;Y;Liability;N;Y;2120111;VIP_TOT;;OVERRIDE;TF_Reserve_5;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Other reserves
2110400;2110413;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_JVITALIA;Y;;1;;EQUITY;;Share of OCI of associates and JVs (subsequent reclassification to P&L)
2110400;2110414;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_JVITALIA;Y;;1;;EQUITY;;Share of OCI of associates and JVs (No subsequent reclassification to P&L)
2110000;2110500;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Retained earnings
2110500;2110501;Y;Liability;N;Y;2120201;VIP_TOT;;OVERRIDE;TF_RetEarn_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITY;CAPI2_CAP;Retained earnings prior to current year
2110500;2110502;Y;Liability;N;Y;;VIP_TOT;;;TF_RetEarn_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;RESULT;RESU_RES;Retained earnings for current year
2110500;2110502G;Y;Liability;N;Y;;VIP_TOT;;;TF_RetEarn_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYG;RESU_RES;Retained earnings for current year Group
2110000;2110601_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Foreign currency translation reserve attributable to equity owners of the parent
2110601_TOT;2110601;Y;Liability;N;Y;;VIP_TOT;;;TF_TrReserve_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CAPIC_CAP;Foreign currency translation reserve attributable to equity owners of the parent
2110601_TOT;2110601_I;Y;Liability;N;Y;;VIP_TOT;;;TF_TrReserve_1;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CAPIC_INV;Foreign curr. trans. reserve attributable to equity owners of the parent - INV
2110601_TOT;2110601_OVR;Y;Liability;N;Y;;VIP_TOT;;;TF_Ovr;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CAPIC_CAP;Foreign curr. trans. reserve attributable to equity owners of the parent - OVR
2110601_TOT;2110601_FRX;Y;Liability;N;Y;;VIP_TOT;;OVERRIDE;TF_Frx;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CAPIC_CAP;Foreign curr. trans. reserve attributable to equity owners of the parent - FOREX
2110601_TOT;2110601G;Y;Liability;N;Y;;VIP_TOT;;;TF_TrReserve_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CAPIC_CAP;Foreign curr. trans. reserve attributable to equity owners of the parent Group
2110601_TOT;2110502C;Y;Liability;N;Y;;VIP_TOT;;;TF_TrReserve_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CAPIC_RES;Foreign currency translation reserve P&L
2110000;2110701_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Consolidation Reserve Group
2110701_TOT;2110701;Y;Liability;N;Y;;VIP_TOT;;;TF_ConR_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYG;CAPI_CAP;Consolidation Reserve Group
2110701_TOT;2110701_TS;Y;Liability;N;Y;;VIP_TOT;;;TF_Capital_3;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;EQUITYG;CAPI_CAP;Consolidation Reserve Treasury Shares
2100000;2120000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equity of non-controlling interests
2120000;2120100;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other capital reserves of non-controlling interests
2120100;2120101;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Share-based compensation reserve of non-controlling interests
2120100;2120102;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Cash flow hedge reserve - non-controlling interests
2120100;2120103;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Cash flow hedge reserve - tax effect  of non-controlling interests
2120100;2120104;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Gain / loss on revaluation of financial assets at FVTOCI of NCI
2120100;2120105;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Gain / loss on revaluation of financial assets at FVTOCI - tax effect of NCI
2120100;2120106;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Other revaluation reserve of non-controlling interests
2120100;2120107;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Other revaluation reserve - tax effect of non-controlling interests
2120100;2120108;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_3;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Reserve related to actuarial gain/loss  of non-controlling interests
2120100;2120109;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_3;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Reserve related to actuarial gain/loss-tax effect of non-controlling interests
2120100;2120110;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_4;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Legal reserves of non-controlling interests
2120100;2120111;Y;Liability;N;Y;;VIP_TOT;;;TF_Reserve_5;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Other reserves of non-controlling interests
2120000;2120200;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equity of non-controlling interests - retained earnings
2120200;2120201;Y;Liability;N;Y;;VIP_TOT;;;TF_RetEarn_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Equity of non-controlling interests - retained earnings prior to current year
2120200;2120202;Y;Liability;N;Y;;VIP_TOT;;;TF_RetEarn_2;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Equity of non-controlling interests - retained earnings for current year
2120000;2120401;Y;Liability;N;Y;;VIP_TOT;;;TF_ConR_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;EQUITYM;;Consolidation Reserve Minority
2120000;2120301;Y;Liability;N;Y;;VIP_TOT;;;TF_TrReserve_1;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Foreign currency translation reserve of non-controlling interests
2000000;2200000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Non Current Liabilities (NCL)
2200000;2210000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial liabilities - NCL
2210000;2210100;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - NCL
2210100;2210101;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - principal - NCL
2210100;2210102;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - FV adjustment - NCL
2210100;2210103;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans-unamortized FV adjustment under acquisition method of accounting-NCL
2210100;2210104;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - interest accrued - NCL
2210100;2210105;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - discounts, unamortized fees - NCL
2210100;2210106;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Banks loans initial financing - NCL
2210000;2210200;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - NCL
2210200;2210201;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - principal - NCL
2210200;2210202;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - FV adjustment - NCL
2210200;2210203;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - unamortized FV adjustment under acquisition method of accounting - NCL
2210200;2210204;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - interest accrued - NCL
2210200;2210205;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - discounts, unamortized fees - NCL
2210000;2210300;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Payables within VimpelCom – NCL
2210300;2210301;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom - principal - NCL
2210300;2210302;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom - interest accrued - NCL
2210300;2210303;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom discounts, unamortized fees – NCL 
2210000;2210400;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Promissory notes payables - NCL
2210400;2210401;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Promissory notes payables - principal - NCL
2210400;2210402;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Promissory notes payables - interest accrued - NCL
2210000;2210500;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - NCL
2210500;2210501;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - principal - NCL
2210500;2210502;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - interest accrued - NCL
2210500;2210503;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - discounts, unamortized fees - NCL
2210000;2210600;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - NCL
2210600;2210601;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others - principal - NCL
2210600;2210602;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others -  interest accrued - NCL
2210600;2210603;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others - unamortized fees - NCL
2210000;2210700;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - NCL
2210700;2210701;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cross-currency interest rate exchange contracts - NCL derivatives
2210700;2210702;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Foreign exchange contracts - NCL derivatives
2210700;2210703;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest rate exchange contracts - NCL derivatives
2210700;2210704;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Derivatives over non-controlling interest - NCL derivatives
2210700;2210705;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest accrued - NCL derivatives
2210000;2210800;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other financial liabilities - NCL
2200000;2220000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provisions - NCL
2220000;2220101;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax provisions - NCL
2220000;2220201;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Tax provisions other than for income tax - NCL
2220000;2220301;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provision for decommissioning - NCL
2220000;2220401;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Legal provision - NCL
2220000;2220500;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Restructuring and other provisions - NCL
2220500;2220501;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Corporate restructuring cost and termination indemnity - NCL
2220500;2220503;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other provisions - NCL
2200000;2230000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other non-financial liabilities - NCL
2230000;2230100;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Customer associated liabilities - NCL
2230100;2230101;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Deferred revenue - NCL
2230100;2230102;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer loyalty programs liability - NCL
2230000;2230200;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel associated liabilities - NCL
2230200;2230201;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bonus to employees accrual - NCL
2230200;2230202;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Long term incentive plan for management - NCL
2230200;2230203;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Allowance for pensions and other post-employment benefits - NCL
2230000;2230300;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables to government authorities (GA) - NCL
2230300;2230301;Y;Liability;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Investment payables to GA - non-financial liabilities - NCL
2230300;2230302;Y;Liability;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for property and equipment to GA - non-financial liabilities - NCL
2230300;2230303;Y;Liability;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for licenses to GA - non-financial liabilities - NCL
2230300;2230304;Y;Liability;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for other intangibles - non-financial liabilities - NCL
2230300;2230305;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Governmental grants liabilities - NCL
2230000;2230401;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other non-financial liabilities - NCL
2200000;2240101;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Deferred  tax liabilities -NCL
2000000;2300000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Current Liabilities (CL)
2300000;2310000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Trade and other payables
2310000;2310100;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Trade payables
2310100;2310101;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Trade payables due for interconnect
2310100;2310102;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Trade payables due for roaming
2310100;2310103;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Trade payables due to dealers and distributors
2310100;2310104;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Trade payables due to other suppliers
2310100;2310105;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Accrued payables on roaming rebates - CL
2310100;2310106;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Trade payables due for Traffic Termination
2310000;2310200;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Payables for long-lived assets - CL
2310200;2310201;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Payables for property and equipment - CL
2310200;2310202;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Payables for other intangibles - CL
2310200;2310203;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Payables for licenses - CL
2310000;2310300;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Deferred payment for investment in subsidiaries, associates and JCE - CL
2310300;2310301;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Deferred payment for investment in subsidiaries - CL
2310300;2310302;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Deferred payment for investment in associates - CL
2310300;2310303;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Deferred payment for investment in JCE - CL
2310000;2310400;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other payables
2310400;2310401;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Accounts payable - management fees - CL
2310400;2310402;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other accounts payable - CL
2300000;2320000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Dividends payable to the owners and NCI
2320000;2320101;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Dividends payable to the owners of the parent
2320000;2320102;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Dividends payable to NCI
2300000;2330000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other non-financial liabilities - CL
2330000;2330100;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables to government authorities- CL
2330100;2330101;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payroll Tax payable - CL
2330100;2330102;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Land Tax payable - CL
2330100;2330103;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Value added tax payable - CL
2330100;2330104;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Revenue sharing payable - CL
2330100;2330105;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other Tax payable - CL
2330100;2330106;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other payables to government authorities - CL
2330000;2330200;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel associated liabilities - CL
2330200;2330201;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Net pension obligations - CL
2330200;2330202;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Wages and salaries payables (excl. board members)- CL
2330200;2330203;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Board members remuneration - CL
2330200;2330204;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bonus to employees accrual - CL
2330200;2330205;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Long term incentive plan for management, current portion - CL
2330200;2330206;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Holiday pay accrual - CL
2330200;2330207;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Social security payables - CL
2330200;2330208;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other personnel associated liabilities - CL
2330000;2330300;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Customer associated liabilities - CL
2330300;2330301;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid connection fee - from customers - CL
2330300;2330302;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Deferred revenue - CL
2330300;2330303;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer deposits - CL
2330300;2330304;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer advances - CL
2330300;2330305;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer loyalty programs liability - CL
2330000;2330400;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other non-financial liabilities - CL
2330400;2330401;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other non-financial liabilities - CL
2330000;ST_PLUG;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Short Term Plug Account
2330000;LT_PLUG;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;;;Long Term Plug Account
2300000;2340000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial liabilities - CL
2340000;2340100;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - CL
2340100;2340101;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - principal - CL
2340100;2340102;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Current portion of long term bank loans - principal - CL
2340100;2340103;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - FV adjustment - CL
2340100;2340104;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Current portion of long term bank loans - FV adjustment - CL
2340100;2340105;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - unamortized FV adj. under acquisition method of accounting - CL
2340100;2340106;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - interest accrued - CL
2340100;2340107;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - discounts, unamortized fees - CL
2340000;2340200;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank overdraft - CL
2340200;2340201;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank overdraft - principal - CL
2340200;2340202;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank overdraft - interest accrued - CL
2340000;2340300;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - CL
2340300;2340301;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - principal - CL
2340300;2340302;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - FV adjustment - CL
2340300;2340303;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - unamortized FV adjustment under acquisition method of accounting - CL
2340300;2340304;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - interest accrued - CL
2340300;2340305;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - discounts, unamortized fees - CL
2340000;2340400;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Payables within VimpelCom – CA
2340400;2340401;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom - principal - CL
2340400;2340402;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom - interest accrued - CL
2340400;2340403;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other payables within VimpelCom – CA
2340400;2340404;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom – unamortized fees – CL
2340000;2340500;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Promissory notes payables - CL
2340500;2340501;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Promissory notes payables - principal - CL
2340500;2340502;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Promissory notes payables - interest accrued - CL
2340000;2340600;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - CL
2340600;2340601;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - principal - CL
2340600;2340602;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - interest accrued - CL
2340600;2340603;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - discounts, unamortized fees - CL
2340000;2340700;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - CL
2340700;2340701;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others - principal - CL
2340700;2340702;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others -  interest accrued - CL
2340700;2340703;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others - discounts, unamortized fees - CL
2340000;2340800;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - CL
2340800;2340801;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cross-currency interest rate exchange contracts - CL derivatives
2340800;2340802;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Foreign exchange contracts - CL derivatives
2340800;2340803;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest rate exchange contracts - CL derivatives
2340800;2340804;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Derivatives over non-controlling interest - CL derivatives
2340800;2340805;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest accrued - CL derivatives
2300000;2350000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current income tax payable and withholding tax
2350000;2350101;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Income tax payable
2350000;2350201;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax payable
2300000;2360000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provisions - CL
2360000;2360101;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax provisions - CL
2360000;2360201;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Tax provisions other than for income tax - CL
2360000;2360301;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provision for decommissioning - CL
2360000;2360401;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Legal provision - CL
2360000;2360500;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Restructuring and other provisions - CL
2360500;2360501;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Corporate restructuring cost and termination indemnity - CL
2360500;2360502;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other provisions -CL
2000000;2410101;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Liabilities directly associated with the assets held for sale
2410101;2410101_NR;Y;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Liabilities directly associated with the assets held for sale
2410101;2410101_ELIM_ST_PLUG;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Liabilities directly associated with the assets held for sale
2410101;2410101_ELIM_LT_PLUG;Y;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Liabilities directly associated with the assets held for sale
2410101;2410201;Y;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Liabilities directly associated with the assets held for sale (individual)
#root;BS_INTERNAL;Y;GroupLabel;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Balance Sheet (Internal)
BS_INTERNAL;1000000_MR;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Total Assets (MR)
1000000_MR;1260000;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalents
1000000_MR;1700000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Financial assets
1700000;1170000;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other financial assets - NCA
1700000;1250000;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other financial assets  - CA
1700000;1220301;N;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Dividends receivable
1000000_MR;1800000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Working capital assets
1800000;1840000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Accounts receivable
1840000;1220100_MR;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Trade  receivables (MR)
1220100_MR;1811000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Receivables due from Customers
1811000;1220101;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables due from customers, gross
1811000;1220401;N;Asset;N;Y;4331101;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allowance for doubtful accounts - receivables due from customers
1220100_MR;1812000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Receivables due for Roaming
1812000;1220102;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables due for roaming, gross
1812000;1220402;N;Asset;N;Y;4331102;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allowance for doubtful accounts - receivables due  for roaming
1812000;1220105;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Accrued receivables on roaming discounts, gross
1220100_MR;1813000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Receivables due for Inteconnection
1813000;1220103;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables due for interconnect, gross
1813000;1220403;N;Asset;N;Y;4331103;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allowance for doubtful accounts - receivables due  for interconnect
1220100_MR;1814000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Dealers and distributors
1814000;1220104;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables due from dealers and distributors, gross
1814000;1220404;N;Asset;N;Y;4331104;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allowance for doubtful accounts - receivables due from dealers and distributors
1220100_MR;1815000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Management fee's and other receivables
1815000;1220302;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Accounts receivable - management fees
1815000;1220106;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other trade receivables, gross
1815000;1220107;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Receivables due for Traffic Termination, gross
1815000;1220405;N;Asset;N;Y;4331105;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allowance for doubtful accounts - other trade receivables
1815000;1220303;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other receivables
1815000;1230106;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Indemnification assets - CA
1840000;1810000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Advance to Suppliers and Prepayments
1810000;1180201;N;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Advance to suppliers and prepayments - NCA
1810000;1230102;N;Asset;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Advance to suppliers and prepayments - CA
1810000;1180301;N;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Deferred costs related to connection fees - NCA
1810000;1230103;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Current portion of deferred cost related to connection fees - CA
1840000;1820000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Input VAT and Prepaid Taxes
1820000;1180101;N;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Input value added tax - NCA
1820000;1180401;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid taxes, other than income taxes - NCA
1820000;1180501;N;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other non-financial assets - NCA
1820000;1230101;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Input value added tax - CA
1820000;1230104;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid taxes, other than income taxes - CA
1820000;1230105;N;Asset;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other non-financial assets - CA
1800000;1240000;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Current income tax and withholding tax advances
1800000;1210000_MR;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Inventories (MR)
1210000_MR;1210101;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telephone equipment and accessories
1210000_MR;1821000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Sim cards, scratch cards and connection packages
1821000;1210102;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;SIM-cards
1821000;1210103;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Scratch cards and connection packages
1210000_MR;1823000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other Inventory Total
1823000;1210104;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advertising and info materials
1823000;1210105;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Equipment for resale
1823000;1210106;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other inventory
1823000;1210201;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Inventory - obsolescence allowance
1800000;1850000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Network Inventory, Receivables and Advances for Fixed Assets
1850000;1830000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Network Inventory
1830000;1110601;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Equipment not installed
1830000;1110603;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Assets under construction
1850000;1860000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Advances for Fixed Assets
1860000;1110701;N;Asset;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Advances for property and equipment
1860000;1120701;N;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advances for intangible assets
1850000;1120801;N;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advances for licenses
1850000;1870000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Accounts Receivable from Sale of Fixed Assets, Net
1870000;1220200;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Accounts receivable from sale of long-lived assets
1870000;1220406;N;Asset;N;Y;4331106;VIP_TOT;;;TF_TradeReceiv_2;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;PROV_PRO;Allow. for doubtful accounts-accounts receivable from sale of long-lived assets
1000000_MR;1600000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Non-Current Tax Assets
1600000;1160101;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Deferred Tax Assets
1600000;1181000;N;Asset;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Income taxes advances - NCA
1000000_MR;1400000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Fixed Assets
1400000;1410000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Tangible Assets
1410000;1110101;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunications equipment
1410000;1110200;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Land, buildings, constructions and leasehold improvements
1410000;1110301;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Vehicles, office equipment
1410000;1110401;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Measuring Equipment
1410000;1110501;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other equipment
1410000;1110602;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Installation work capitalized
1400000;1120000_MR;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Intangible assets (excl. goodwill) (MR)
1120000_MR;1120200;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchased and internally developed software
1120000_MR;1120301;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Brands and trademarks
1120000_MR;1120400;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer relationships
1120000_MR;1120501;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telephone line capacity
1120000_MR;1120601;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other intangible assets and assets development
1400000;1120101;N;Asset;N;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunications licenses, frequencies and permission
1000000_MR;1130101;N;Asset;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Goodwill
1000000_MR;1500000;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Associates and subsidiaries
1500000;1140101;N;Asset;N;Y;6300401;VIP_TOT;;OVERRIDE;TF_Inv_1;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;INVESTMENT;PINT_INV;Investments in subsidiaries
1500000;1150000;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Investments in associates, jointly controlled entities and accounted for at cost
1500000;IV_PLUG;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Investments Plug Account
1000000_MR;1300000;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Assets held for sale
BS_INTERNAL;2000000_MR;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Total Liabilities and Equity (MR)
2000000_MR;2400000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Total Liabilities
2400000;2410000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Working Capital Liabilities
2410000;2440000_MR;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Accounts Payable Total
2440000_MR;2310100_MR;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Trade payables (MR)
2310100_MR;2310101;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Trade payables due for interconnect
2310100_MR;2310103;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Trade payables due to dealers and distributors
2310100_MR;2411100;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Roaming and roaming rebates
2411100;2310102;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Trade payables due for roaming
2411100;2310105;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Accrued payables on roaming rebates - CL
2310100_MR;2310104;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Trade payables due to other suppliers
2310100_MR;2411200;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Management fee's and other liabilities
2411200;2310106;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Trade payables due for Traffic Termination
2411200;2310400;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other payables
2440000_MR;2440000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Other liabilities
2440000;2230305;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Governmental grants liabilities - NCL
2440000;2330106;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other payables to government authorities - CL
2440000;2330401;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other non-financial liabilities - CL
2440000;2230401;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other non-financial liabilities - NCL
2440000_MR;2412000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Customer related liabilities and deferred revenues
2412000;2412100;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Deferred revenues
2412100;2230101;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Deferred revenue - NCL
2412100;2330302;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Deferred revenue - CL
2412000;2412200;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer Advances and Deposits.
2412200;2330301;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid connection fee - from customers - CL
2412200;2330303;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer deposits - CL
2412200;2330304;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer advances - CL
2412000;2412300;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer loyalty programs
2412300;2230102;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer loyalty programs liability - NCL
2412300;2330305;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer loyalty programs liability - CL
2440000_MR;2413000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;VAT Payable and Revenue Sharing
2413000;2330101;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payroll Tax payable - CL
2413000;2330102;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Land Tax payable - CL
2413000;2330103;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Value added tax payable - CL
2413000;2330104;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Revenue sharing payable - CL
2413000;2330105;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other Tax payable - CL
2440000_MR;2414000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel related payables
2414000;2230200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel associated liabilities - NCL
2414000;2330200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel associated liabilities - CL
2410000;2415000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Payables fixed assets
2415000;2230300_MR;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables to government authorities (GA) - NCL (MR)
2230300_MR;2230301;N;Liability;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Investment payables to GA - non-financial liabilities - NCL
2230300_MR;2230302;N;Liability;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for property and equipment to GA - non-financial liabilities - NCL
2230300_MR;2230303;N;Liability;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for licenses to GA - non-financial liabilities - NCL
2230300_MR;2230304;N;Liability;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for other intangibles - non-financial liabilities - NCL
2415000;2310200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Payables for long-lived assets - CL
2410000;2350000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current income tax payable and withholding tax
2400000;2420000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Provisions
2420000;2220000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provisions - NCL
2420000;2360000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provisions - CL
2420000;ST_PLUG;N;Liability;N;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Short Term Plug Account
2420000;LT_PLUG;N;Liability;N;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Long Term Plug Account
2400000;2430000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Debt
2430000;2431000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Current Debt
2431000;2431100;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - CD
2431100;2340201;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank overdraft - principal - CL
2431100;2340101;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - principal - CL
2431100;2340102;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Current portion of long term bank loans - principal - CL
2431000;2431200;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Bonds - CD
2431200;2340301;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - principal - CL
2431000;2431300;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Payables within VimpelCom - CD
2431300;2340401;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom - principal - CL
2431000;2431400;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Promissory notes payables - CD
2431400;2340501;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Promissory notes payables - principal - CL
2431000;2431500;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - CD
2431500;2340601;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - principal - CL
2431000;2431600;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - CD
2431600;2340701;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others - principal - CL
2431000;2431700;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Interest accrued, derivatives and discounts - CD
2431700;2340103;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - FV adjustment - CL
2431700;2340104;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Current portion of long term bank loans - FV adjustment - CL
2431700;2340105;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - unamortized FV adj. under acquisition method of accounting - CL
2431700;2340106;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - interest accrued - CL
2431700;2340107;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - discounts, unamortized fees - CL
2431700;2340202;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank overdraft - interest accrued - CL
2431700;2340302;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - FV adjustment - CL
2431700;2340303;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - unamortized FV adjustment under acquisition method of accounting - CL
2431700;2340304;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - interest accrued - CL
2431700;2340305;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - discounts, unamortized fees - CL
2431700;2340402;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom - interest accrued - CL
2431700;2340403;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other payables within VimpelCom – CA
2431700;2340404;N;Liability;N;Y;ST_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom – unamortized fees – CL
2431700;2340502;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Promissory notes payables - interest accrued - CL
2431700;2340602;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - interest accrued - CL
2431700;2340603;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - discounts, unamortized fees - CL
2431700;2340702;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others -  interest accrued - CL
2431700;2340703;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others - discounts, unamortized fees - CL
2431700;2340800;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - CL
2431700;2310300;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Deferred payment for investment in subsidiaries, associates and JCE - CL
2431700;2320000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Dividends payable to the owners and NCI
2431700;2210106;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Banks loans initial financing - NCL
2430000;2432000;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Non-Current Debt
2432000;2432100;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - NCD
2432100;2210101;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - principal - NCL
2432000;2432200;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Bonds - NCD
2432200;2210201;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - principal - NCL
2432000;2432300;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Payables within VimpelCom - NCD
2432300;2210301;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom - principal - NCL
2432000;2432400;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Promissory notes payables - NCD
2432400;2210401;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Promissory notes payables - principal - NCL
2432000;2432500;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - NCD
2432500;2210501;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - principal - NCL
2432000;2432600;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - NCD
2432600;2210601;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others - principal - NCL
2432000;2432700;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Interest accrued, derivatives and discounts - NCD
2432700;2210102;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - FV adjustment - NCL
2432700;2210103;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans-unamortized FV adjustment under acquisition method of accounting-NCL
2432700;2210104;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - interest accrued - NCL
2432700;2210105;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - discounts, unamortized fees - NCL
2432700;2210202;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - FV adjustment - NCL
2432700;2210203;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - unamortized FV adjustment under acquisition method of accounting - NCL
2432700;2210204;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - interest accrued - NCL
2432700;2210205;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - discounts, unamortized fees - NCL
2432700;2210302;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom - interest accrued - NCL
2432700;2210303;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans payables within VimpelCom discounts, unamortized fees – NCL 
2432700;2210402;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Promissory notes payables - interest accrued - NCL
2432700;2210502;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - interest accrued - NCL
2432700;2210503;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - discounts, unamortized fees - NCL
2432700;2210602;N;Liability;N;Y;LT_PLUG;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others -  interest accrued - NCL
2432700;2210603;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others - unamortized fees - NCL
2432700;2210700;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - NCL
2432700;2210800;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other financial liabilities - NCL
2400000;2240101;N;Liability;N;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Deferred  tax liabilities -NCL
2400000;2410101;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Liabilities directly associated with the assets held for sale
2000000_MR;2100000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;TotC2;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equity
#root;PL_EXTERNAL;Y;GroupLabel;Y;Y;;;;;;;;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Profit and Loss Account External Reporting
PL_EXTERNAL;Net_Profit;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;TotC1;RP000;LOB_000;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Profit for the year
Net_Profit;6900000;Y;Revenue;N;Y;;VIP_TOT;;;;;;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Non-controlling interest
Net_Profit;Profit_NCI;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;TotC1;RP000;LOB_000;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Profit Before Non Controlling Interest
Profit_NCI;6700000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB_000;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Profit / loss from discontinued operations and disposal
6700000;6700100;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB_000;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Profit / loss from discontinued operations
6700100;6710101;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB_000;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net income before tax from discontinued operations
6710101;6710101_NR;Y;Revenue;N;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB_000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Net income before tax from discontinued operations
6710101;6710101_ELIM_OT_PLUG;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB_000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Net income before tax from discontinued operations
6710101;6710101_ELIM_RC_PLUG;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB_000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Net income before tax from discontinued operations
6710101;6710101_DIVI;Y;Revenue;N;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB_000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;DIVI_DIV;Net income before tax from discontinued operations
6700100;6710102;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB_000;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Tax impact on net income from discontinued operations
6710102;6710102_NR;Y;Revenue;N;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB_000;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Tax impact on net income from discontinued operations
6700000;6700200;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Gain / loss on disposal of discontinued operations
6700200;6700201;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Gain / loss on disposal of discontinued operations
Profit_NCI;PAT;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;TotC1;RP000;LOB_000;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Profit from Continuing Operations After Tax
PAT;6800000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax expenses
6800000;6800100;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current income tax and withholding tax expense
6800100;6800101;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Income tax expense
6800100;6800102;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax expenses
6800000;6800201;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Deferred income tax expense
PAT;PBT;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;TotC1;RP000;LOB_000;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Profit from Continuing Operations Before Tax
PBT;6200000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Finance income
6200000;6200100;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Dividend income
6200100;6200101;Y;Revenue;N;Y;;VIP_TOT;;OVERRIDE;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;DIVIDEND;DIVI_DIV;Dividend from subsidiaries
6200100;6200102;Y;Revenue;N;Y;;VIP_TOT;;OVERRIDE;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;DIVIDEND;;Dividend from associates
6200100;6200103;Y;Revenue;N;Y;;VIP_TOT;;OVERRIDE;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;DIVIDEND;;Dividend from JCE
6200100;6200104;Y;Revenue;N;Y;;VIP_TOT;;OVERRIDE;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;DIVIDEND;;Dividend from financial investments
6200000;6200200;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Interest income
6200200;6200201;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest income - bank deposits
6200200;6200202;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest income - loans receivable within VimpelCom
6200200;6200203;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest income - assets held to maturity
6200200;6200204;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest income - overdue payment
6200200;6200205;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest income - other
6200000;6200301;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other finance income
PBT;6100000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Finance costs
6100000;6100100;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Interest expense
6100100;6100101;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - bank loans
6100100;6100102;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - bank overdrafts
6100100;6100103;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - bonds
6100100;6100104;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - loans payables within VimpelCom
6100100;6100105;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - equipment financing
6100100;6100106;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - loans from others
6100100;6100107;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Hedge result - cross-currency and interest rate exchange contracts
6100100;6100108;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Hedge result - interest rate exchange contracts
6100100;6100109;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - overdue payment
6100100;6100110;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - decommissioning cost
6100100;6100111;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - income tax provisions
6100100;6100112;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - tax provisions other than for income tax
6100100;6100113;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - legal provision
6100100;6100114;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - restructuring and other provisions
6100100;6100115;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest expense - other
6100000;6100200;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Amortization of discounts, fees and excess value
6100200;6100201;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Amortization of discounts, fees and excess value - bank loans
6100200;6100202;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Amortization of discounts, fees and excess value - bonds
6100200;6100203;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Amortization of discounts, fees and excess value - equipment financing
6100200;6100204;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Amortization of discounts, fees and excess value - loans from others
6100000;6100301;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Capitalization of interest
6100000;6100501;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other finance costs
PBT;6500000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net foreign exchange gain / loss
6500000;6500101;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Realized foreign exchange gain
6500000;6500201;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Realized foreign exchange loss
6500000;6500301;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Unrealized foreign exchange gain
6500000;6500401;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Unrealized foreign exchange  loss
6500000;OT_PLUG;Y;Revenue;N;Y;;VIP_TOT;;;;HST_CORR_PLUG;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Other Revenue/Cost Plug Account
6500000;RC_PLUG;Y;Revenue;N;Y;;VIP_TOT;;;;HST_CORR_PLUG;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Operating Revenue/Cost Plug
PBT;6400000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Shares of loss/(profit) of associates and joint ventures
6400000;6410000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Profit / loss associates
6410000;6410100;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Share of profit / loss, depreciation and impairment associates
6410100;6410101;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Share of profit / loss after tax - associates
6410100;6410102;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Depreciation of excess value - associates
6410100;6410103;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Amortization of excess value - associates
6410100;6410104;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Impairment of excess value - associates
6410100;6410105;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Impairment of goodwill - associates
6410000;6410200;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Gain / loss from sale of associates
6410200;6410201;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Book vale of associates sold
6410200;6410202;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Sale value of associates sold
6400000;6420000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Profit / loss Jointly controlled entities (JCE)
6420000;6420100;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Share of profit / loss, depreciation and impairment JCE
6420100;6420101;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Share of profit / loss after tax - JCE
6420100;6420102;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Depreciation of excess value - JCE
6420100;6420103;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Amortization of excess value - JCE
6420100;6420104;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Impairment of excess value - JCE
6420100;6420105;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Impairment of goodwill - JCE
6420000;6420200;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Gain / loss from sale of JCE
6420200;6420201;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Book value of JCE sold
6420200;6420202;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Sale value of JCE sold
PBT;6300000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other non operating gains / losses
6300000;6300100;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives gains / losses
6300100;6300101;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Hedge results - ineffective part
6300100;6300102;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Change in fair value of cross-currency and interest rate exchange contracts
6300100;6300103;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Change in fair value of foreign exchange contracts
6300100;6300104;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Change in fair value of interest rate exchange contracts
6300100;6300105;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Change in fair value of embedded derivatives in financial liability contracts
6300100;6300106;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Change in fair value of derivatives over non-controlling interest
6300100;6300107;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Change in fair value of derivatives within VimpelCom
6300000;6300200;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Gains / losses on other financial assets and liabilities
6300200;6300201;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Change in fair value of other financial assets
6300200;6300202;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Change in fair value of financial liabilities
6300200;6300203;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Gain / loss on sale of other financial assets
6300200;6300204;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Impairment loss from other financial assets
6300000;6300300;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Gain / loss on investment in subsidiaries
6300300;6300301;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Book value of investments in subsidiaries sold
6300300;6300302;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Sale value of investments in subsidiaries sold
6300000;6300401;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;;;Impairment of subsidiary
6300000;6300500;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other non operating gains / losses
6300500;6300501;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other non operating gains
6300500;6300502;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other non operating losses
6300000;6100401;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Early redemption fees
PBT;6600000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Management fees income / expense within VimpelCom
6600000;6600101;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;VimpelCom International Services fees within VimpelCom
6600000;6600201;Y;Revenue;N;Y;OT_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Headquarter recharges within VimpelCom
PBT;OPER_PROFIT;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;TotC1;RP000;LOB_000;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Operating Profit
OPER_PROFIT;OPER_REV;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;TotC1;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Operating Revenues
OPER_REV;3110000;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;TotC6;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue total
3110000;3110100;Y;Revenue;Y;Y;RC_PLUG;VIP_TOT;;MKD_TOT;Product;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue (bundle + pay as you go)
3110100;3110111;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;Product;RP000;LB_01_03_05;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - in bundle
3110100;3110120;Y;Revenue;Y;Y;RC_PLUG;VIP_TOT;;MKD_TOT;Product;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - pay as you go total
3110120;3110121;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;Product;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - pay as you go
3110120;3110122;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01_04;RP000;LB_01_03_05;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - pay as you go - on-net
3110120;3110123;Y;Revenue;Y;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01_04;RP000;LB_01_03_05;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - pay as you go - off-net
3110123;3110124;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01_04;RP000;LB_01_03_05;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - pay as you go - off-net national
3110123;3110125;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01_04;RP000;LB_01_03_05;CustomerType;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - pay as you go - off-net international
3110000;3110400;Y;Revenue;Y;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01_04;RP000;LB_01_03_05;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - Interconnect
3110400;3110401;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01_04;RP000;LB_01_03_05;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - Interconnect national
3110400;3110402;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01_04;RP000;LB_01_03_05;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - Interconnect international
3110000;3110300;Y;Revenue;Y;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01_02_04;RP000;LB_01_03_05;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service Revenue - Roaming 
3110300;3110301;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01_02_04;RP000;LB_03;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service Revenue - National Roaming
3110300;3110310;Y;Revenue;Y;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01_02_04;RP000;LB_01_03_05;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service Revenue - International Roaming
3110310;3110311;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01;RP000;LB_03;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service Revenue - International Roaming MT Voice
3110310;3110312;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_01;RP000;LB_01_03_05;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service Revenue - International Roaming MO Voice
3110310;3110313;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PR_02_04;RP000;LB_03;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service Revenue - International Roaming Non Voice
3110000;3110001;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue - other
OPER_REV;3210100;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;TotC1;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Revenues from sale of equipment and accessories total
3210100;3210101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;Devices;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Revenues from sale of equipment and accessories
3210100;3210102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;MobileDevice;RP000;LB_04;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Revenue from handsets for subscriber acquisition
3210100;3210103;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;MobileDevice;RP000;LB_04;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Revenue from handsets for subscriber retention
3210100;3210104;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;FixedDevice;RP000;LB_02;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Revenue from fixed-line devices
3210100;3210199;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;Devices;RP000;LB_02_04;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Other Sales of Equipment And Accessories
OPER_REV;3300000;Y;Revenue;Y;Y;;VIP_TOT;;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other revenue & operating income
3300000;3310000;Y;Revenue;Y;Y;;VIP_TOT;;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other revenues
3310000;3310101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other revenues - grants related to plant
3310000;3310102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other revenues - prior period income (change in estimates, etc.)
3310000;3310103;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other revenues - management fee to external parties
3310000;3310104;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other revenues - agent fee
3310000;3310105;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other revenues - rental and lease income
3310000;3310106;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other revenues - site sharing revenue
3310000;3310107;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other revenues - other
3300000;3320000;Y;Revenue;Y;Y;;VIP_TOT;;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Operating income
3320000;3320101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Operating income from legal fines and penalties
3320000;3320102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Operating income from damage compensation and recovery
3320000;3320103;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other operating income
OPER_PROFIT;OPER_EXP;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;PROD_000;RP000;LOB_000;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Operating Expenses
OPER_EXP;4100000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Service costs
4100000;4111000;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service Cost - Interconnect
4111000;4110101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - Interconnect unspecfic
4111000;4111002;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;Product;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - Interconnect national
4111000;4111003;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;Product;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - Interconnect international 
4100000;4112000;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - Roaming
4112000;4110105;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - Roaming unspecific
4112000;4112006;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MK_09;PR_01_02_04;RP000;LB_03;CustomerType;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - National Roaming 
4112000;4112010;Y;Revenue;Y;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;Product;RP000;LOB;CustomerType;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - International Roaming 
4112010;4112002;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;Product;RP000;LOB;CustomerType;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - International Roaming MT Voice
4112010;4112003;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;Product;RP000;LOB;CustomerType;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - International Roaming MO Voice
4112010;4112004;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MK_09;PR_02_04;RP000;LB_03;CustomerType;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - International Roaming Non Voice
4112000;4112005;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MK_09;PR_01_02_04;RP000;LB_03;CustomerType;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Service cost - Other Roaming Operational Cost
4100000;4110106;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of content
4100000;4120102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of internet traffic
4100000;4110107;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other direct cost
4100000;4350999;Y;Revenue;Y;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;;Transport Network costs
4350999;4110200;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;National transport leased line cost total
4110200;4110102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;National transport leased line cost
4110200;4110201;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Local leased lines
4110200;4110202;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Metro leased lines
4110200;4110203;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Longhaul leased lines
4110200;4110204;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LB_04;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Bandwidth charges
4110200;4110299;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Other leased lines expenses technical department
4350999;4110103;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;International line cost
4350999;4110104;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other rent transport network cost
OPER_EXP;4200000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;Devices;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Cost of equipment and accessories Total
4200000;4210101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;Devices;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of equipment and accessories
4200000;4220101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;Devices;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Obsolete inventory expenses
OPER_EXP;4300000;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;;RP000;LOB;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Selling, general and administrative expenses
4300000;4310000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel cost
4310000;4311000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Pension cost
4311000;4311101;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Pension cost defined contribution plan incl. SST - personnel cost
4311000;4311102;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Pension cost defined benefit plan incl. SST - personnel cost
4311000;4311103;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Pension cost public retirement benefit plans
4311000;4311104;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Early retirement plans
4310000;4312000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Personnel compensation
4312000;4312101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Personnel cost - wages and salaries (excl. board members)
4312000;4312102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Personnel cost - board members remuneration
4312000;4312130;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Personnel cost - bonus & incentive
4312130;4312131;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Personnel cost - SCP
4312130;4312132;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Personnel cost - STIP
4312130;4312133;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Personnel cost - Other
4312000;4312104;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Personnel cost - long term incentive plan for management
4312000;4312105;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel cost - holiday pay
4312000;4312106;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel cost - share based compensation - denominated in shares
4312000;4312107;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel cost - share based compensation - denominated in cash
4310000;4313101;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Temporary contract workers
4310000;4314100;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other personnel cost
4314100;4314101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other personnel cost - recruiting costs
4314100;4314102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other personnel cost - social security contributions
4314100;4314103;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other personnel cost - benefits & allowances
4314100;4314104;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other personnel costs - workforce reductions
4314100;4314105;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other personnel costs - other
4314100;4314106;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other personnel costs - GSS/Hub service fee
4310000;4315101;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel cost - own work capitalized on assets
4300000;4320000;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Customer associated cost
4320000;4321000;Y;Revenue;Y;Y;;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Customer acquisition cost
4321000;4321101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Commission for top-ups
4321000;4321102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Dealers commissions new adds
4321000;4321103;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other sales and acquisition costs
4320000;4322000;Y;Revenue;Y;Y;;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Customer retention cost
4322000;4322101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of loyalty and bonus-programs
4322000;4322102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Payments to dealers for retention - customers retention costs
4322000;4322103;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loyalty - customers retention costs
4320000;4323000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Media and Marketing
4323000;4323100;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Media Cost
4323100;4323101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Creative Production
4323100;4323102;Y;Revenue;N;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Media planning and buying agency fees
4323100;4323103;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Media buying
4323100;4323112;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other media
4323000;4323200;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Marketing Cost
4323200;4323104;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Marketing print
4323200;4323105;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Marketing on line
4323200;4323106;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Sales promotion
4323200;4323107;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Sponsoring
4323200;4323108;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Events
4323200;4323109;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Market research
4323200;4323110;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;MFS advertising
4323200;4323113;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of outsourced marketing services
4323200;4323111;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other media and marketing
4320000;4324000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;General customer associated cost
4324000;4324101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of scratch cards
4324000;4324102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of SIMs
4324000;4324103;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of outsources call centers
4324000;4324107;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of outsourced procurement, supply chain and logistics services
4324000;4324108;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of outsourced HR services
4324000;4324104;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bill delivery
4324000;4324105;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Transportation services
4324000;4324106;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;MFS dealer commission
4300000;4330000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB_000;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Losses on receivables
4330000;4331000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB_000;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful receivables
4331000;4331101;Y;Revenue;N;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful receivables - due from customers
4331000;4331102;Y;Revenue;N;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful receivables - due from operators for roaming
4331000;4331103;Y;Revenue;N;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful receivables - due from operators for interconnect
4331000;4331104;Y;Revenue;N;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful receivables - due from dealers and distributors
4331000;4331105;Y;Revenue;N;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful receivables - other trade receivables
4331000;4331106;Y;Revenue;N;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful receivables - other receivables
4300000;4340000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Own work capitalized on assets
4340000;4341000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Own work capitalized on assets
4341000;4341101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of materials capitalized on assets
4341000;4341102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other operating expenses capitalized on assets
4300000;4350000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other structural operating expenses
4350000;4350100;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;DS_01;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Operating lease of buildings and land and other rent expenses
4350100;4350110;Y;Revenue;N;Y;;VIP_TOT;CC_000;;;RP000;LOB;DS_02;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Operating lease and rent of buildings and land
4350110;4350111;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;DS_02;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Operating lease and rent of buildings and land (not shared)
4350110;4350112;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;DS_02;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Operating lease and rent of buildings and land (shared)
4350110;4350113;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;DS_02;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Revenue from subletting for operating lease and rent
4350100;4350102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;DS_06;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other rent expenses (other than network cost)
4350000;4350200;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;DS_02;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Utilities - Technical costs
4350200;4350201;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;DS_02;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Utilities - Technical costs - Electricity, water and gas
4350200;4350202;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;DS_02;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Utilities - Technical costs - Fuel and Refueling
4350200;4350203;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;DS_02;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Revenue from subletting for utilities - Technical costs
4350000;4350300;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;DS_06;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Utilities - general costs
4350300;4350301;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;DS_06;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Utilities - general costs - Electricity, water and gas
4350300;4350302;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;DS_06;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Utilities - general costs - Fuel and Refueling
4350000;4350400;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Maintenance
4350400;4350401;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Transport network maintenance
4350400;4350402;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Site and site add. equipment maintenance
4350400;4350406;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Revenue from subletting for Site and site add. equipment maintenance
4350400;4350403;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Telecom equipment and add. equipment maintenance
4350400;4350404;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other repair and maintenance
4350400;4350405;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other network expenses
4350000;4350500;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;IT and other internal network support
4350500;4350501;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Network support & outsourcing
4350500;4350520;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;IT support and other IT cost
4350520;4350521;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Digital
4350520;4350522;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Legacy BSS
4350520;4350523;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;ESS
4350520;4350524;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;IT Infrastructure
4350520;4350525;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;IT Other
4350500;4350503;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Internal network maintenance and support cost
4350000;4350600;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;DS_01;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Facility and office supplies
4350600;4350601;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;DS_06;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Facility management (cleaning & catering)
4350600;4350602;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;DS_01;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Security
4350600;4350603;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;DS_06;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Office supplies, services  & administrative expenses
4350600;4350604;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;DS_06;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other real estate
4350000;4350700;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Travel & Fleet
4350700;4350701;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Airlines
4350700;4350702;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Hotels
4350700;4350703;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Travel Agency
4350700;4350704;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Rental cars, taxis, public transport
4350700;4350705;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Fleet
4350700;4350706;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other Travel & Fleet related costs
4350000;4350800;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Consulting and professional service expenses
4350800;4350801;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Audit & assurance fees
4350800;4350802;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Finance, tax  & other accounting fees
4350800;4350803;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Consulting fees
4350800;4350804;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Legal fees
4350800;4350805;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other professional services fees
4350000;4350900;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;DS_01;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Decommissioning cost
4350900;4350901;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;DS_01;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Decommissioning cost without corresponding obligation accrued
4350000;4351000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Litigation and tax expenses
4351000;4351001;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Litigation losses accrued
4351000;4351002;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Tax fines and penalties cost
4351000;4351003;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Value added tax non-recoverable
4351000;4351004;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;SIM tax subsidy paid to government
4351000;4351050;Y;Revenue;N;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Non income taxes
4351050;4351051;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Non income taxes - Real Estate
4351050;4351052;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Non income taxes - Vehicle
4351050;4351053;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Non income taxes - Other
4350000;4351100;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Licenses and leasing cost
4351100;4351101;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Licenses and frequency permissions, regular payments
4351100;4351102;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecom licenses cost
4351100;4351103;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Leasing cost
4350000;4351200;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other general and administrative costs
4351200;4351210;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Insurance expenses
4351210;4351211;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Insurance expenses - Real Estate
4351210;4351212;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Insurance expenses - Technology
4351210;4351213;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Insurance expenses - Other
4351200;4351202;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Restructuring provisions expense
4351200;4351203;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Onerous contracts
4351200;4351204;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cost to royalty to local authorities
4351200;4351206;Y;Revenue;N;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Social Investment
4351206;4351207;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Charitable donations
4351206;4351208;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Social sponsorship
4351200;4351250;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Other general and administrative costs
4351250;4351251;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Training
4351250;4351252;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Corporate & Other Events
4351250;4351253;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other G&A
4300000;4360000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Costs associated with PT
4360000;4360100;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Implementation
4360100;4360101;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Shared service centers set up
4360100;4360102;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Managed service and NOC set up
4360100;4360103;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Shared call centers set up
4360100;4360104;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Centers of excellence set up
4360100;4360105;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Implementation costs (Opex)
4360000;4360200;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Restructuring
4360200;4360201;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other personal costs - workforce reductions - restructuring
4360200;4360202;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Network and IT - restructuring provision expense
4360200;4360203;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Real estate - restructuring provision expense for property on closure
4360200;4360204;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Real estate - restructuring costs for property
4360200;4360205;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provisions expense restructuring
4360000;4360300;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Integration
4360300;4360301;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other personal costs - workforce reductions - integration
4360300;4360302;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Network and IT - integration provision expense
4360300;4360303;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Real estate - integration provision expense for property on closure
4360300;4360304;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Real estate - integration costs for property
4360300;4360305;Y;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Integration provisions expense
OPER_EXP;5100000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Depreciation of property and equipment
5100000;5100101;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Depreciation of telecommunication equipment
5100000;5100201;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Depreciation of buildings, constructions and leasehold improvements
5100000;5100301;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Vehicles, office equipment - depreciation charge
5100000;5100401;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Measuring equipment - depreciation charge
5100000;5100501;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other equipment - depreciation charge
OPER_EXP;5200000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Amortization of intangible assets
5200000;5200101;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunications licenses, frequencies and permissions - amortization expense
5200000;5200200;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Amortization of software
5200200;5200201;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchased software - amortization expense
5200200;5200202;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Internally developed software - amortization expense
5200000;5200301;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Brands and trademarks - amortization expense
5200000;5200400;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Amortization of customer relationships
5200400;5200401;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer relationships acquired in business combination - amortization expense
5200400;5200402;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer relationships - customer acquisition - amortization expense
5200000;5200501;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telephone line capacity - amortization expense
5200000;5200601;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other intangible assets - amortization expense
OPER_EXP;5300000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Impairment loss
5300000;5300100;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Impairment of property and equipment
5300100;5300101;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunication equipment - impairment
5300100;5300102;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Land - impairment
5300100;5300103;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Buildings, constructions and leasehold improvements - impairment
5300100;5300104;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Vehicles, office equipment - impairment
5300100;5300105;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Measuring equipment - impairment
5300100;5300106;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other equipment - impairment
5300100;5300107;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Equipment not installed - impairment
5300100;5300108;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Assets under construction - impairment
5300100;5300109;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advances for property and equipment - impairment
5300100;5300110;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Impairment FOC/SWAP assets offset
5300000;5300200;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Impairment of intangible assets
5300200;5300201;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunications licenses, frequencies and permissions - impairment
5300200;5300202;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchased software - impairment
5300200;5300203;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Internally developed software - impairment
5300200;5300204;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Brands and trademarks - impairment
5300200;5300205;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer relationships acquired in business combination- impairment
5300200;5300206;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer relationships - customer acquisition - impairment
5300200;5300207;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telephone line capacity - impairment
5300200;5300208;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other intangible assets - impairment
5300200;5300209;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advances for intangible assets - impairment
5300200;5300210;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Impairment of goodwill
OPER_EXP;5400000;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Gains/(losses) on sold property, equipment, intangibles, goodwill and scrapping
5400000;5400100;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Gain / loss on sold property and equipment
5400100;5400101;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Book value of property and equipment sold
5400100;5400102;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Book value of property  and equipment sold within VimpelCom
5400100;5400103;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Sales value of property and equipment
5400100;5400104;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Sales value of property and equipment within VimpelCom
5400000;5400200;Y;Revenue;Y;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Gain / loss on sold intangibles and goodwill
5400200;5400201;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Book value of intangibles and goodwill sold
5400200;5400202;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Book value of intangibles and goodwill sold within VimpelCom
5400200;5400203;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Sales value of intangibles and goodwill
5400200;5400204;Y;Revenue;N;Y;RC_PLUG;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Sales value of intangibles and goodwill within VimpelCom
5400000;5400301;Y;Revenue;N;Y;;VIP_TOT;;;;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Scrapping costs of property and equipment
#root;PL_INTERNAL;Y;GroupLabel;Y;N;;;;;;;;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Profit and Loss Account Internal Reporting
PL_INTERNAL;EBITDA;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;TotC1;RP000;LOB;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Earning before Interest, Taxes, Depreciation and Amortization
EBITDA;CONTRIBUTIONM;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;TotC1;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Contribution Margin
CONTRIBUTIONM;SERVICEM;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Service Margin
SERVICEM;3110000;N;Revenue;N;Y;RC_PLUG;VIP_TOT;TotC6;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service revenue total
SERVICEM;4100000_MR;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Service costs (MR)
4100000_MR;4111000;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service Cost - Interconnect
4100000_MR;4112000;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Service cost - Roaming
4100000_MR;4110106;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of content
4100000_MR;4120102;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of internet traffic
4100000_MR;4110107;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other direct cost
CONTRIBUTIONM;COMMERCIALC;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;TotC1;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Commercial Costs
COMMERCIALC;3300000;N;Revenue;Y;Y;;VIP_TOT;;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other revenue & operating income
COMMERCIALC;3210000;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;TotC1;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Net margin from sale of equipment and accessories
3210000;3210100;N;Revenue;N;Y;RC_PLUG;VIP_TOT;;MKD_TOT;TotC1;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Revenues from sale of equipment and accessories total
3210000;4200000;N;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;Devices;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Cost of equipment and accessories Total
COMMERCIALC;4320000_MR;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Customer associated cost (MR)
4320000_MR;4321000_MR;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Customer acquisition cost (MR)
4321000_MR;4321102;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;ELIM_ELI;Dealers commissions new adds
4321000_MR;4321103;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other sales and acquisition costs
4321000_MR;4324102;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of SIMs
4320000_MR;4322000;N;Revenue;Y;Y;;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Customer retention cost
4320000_MR;4323000;N;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Media and Marketing
4320000_MR;4329000;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Airtime Distribution and Billing Costs
4329000;4329100;Y;Revenue;Y;Y;;VIP_TOT;TotC6;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Top Up Costs
4329100;4321101;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CH_TOT;MKD_TOT;;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Commission for top-ups
4329100;4324101;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of scratch cards
4329000;4324104;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bill delivery
4329000;4324106;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;MFS dealer commission
COMMERCIALC;4330000;N;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB_000;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Losses on receivables
EBITDA;STROPEX;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Structural OPEX
STROPEX;STROPEX_WOPT;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Structural OPEX (excluding PT Costs)
STROPEX_WOPT;GANDACOSTS;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;TotC7;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;G&A Costs
GANDACOSTS;4350300;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Utilities - general costs
GANDACOSTS;4350600;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;DS_01;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Facility and office supplies
GANDACOSTS;4350700;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Travel & Fleet
GANDACOSTS;4350800;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Consulting and professional service expenses
GANDACOSTS;4324103;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of outsources call centers
GANDACOSTS;4324107;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of outsourced procurement, supply chain and logistics services
GANDACOSTS;4324108;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cost of outsourced HR services
GANDACOSTS;4350900;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;DS_01;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Decommissioning cost
GANDACOSTS;4351000;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Litigation and tax expenses
GANDACOSTS;4351200_MR;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Other general and administrative costs Total (MR)
4351200_MR;4351210;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Insurance expenses
4351200_MR;4351202;N;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Restructuring provisions expense
4351200_MR;4351203;N;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Onerous contracts
4351200_MR;4351204;N;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cost to royalty to local authorities
4351200_MR;4351206;N;Revenue;N;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Social Investment
4351200_MR;4351250;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Other general and administrative costs
4351200_MR;4324105;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Transportation services
GANDACOSTS;4350102;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;DS_06;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Other rent expenses (other than network cost)
STROPEX_WOPT;4340000_MR;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Own work capitalized on assets Total (MR)
4340000_MR;4341000;N;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Own work capitalized on assets
4340000_MR;4315101;N;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel cost - own work capitalized on assets
STROPEX_WOPT;4310000_MR;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;HR Costs (MR)
4310000_MR;4311000;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Pension cost
4310000_MR;4312000;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Personnel compensation
4310000_MR;4313101;N;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Temporary contract workers
4310000_MR;4314100;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other personnel cost
STROPEX_WOPT;TECHSTRCOSTS;Y;Revenue;Y;Y;;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Technology Structural Costs
TECHSTRCOSTS;4351103;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Leasing cost
TECHSTRCOSTS;4350399;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;License costs
4350399;4351101;N;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Licenses and frequency permissions, regular payments
4350399;4351102;N;Revenue;N;Y;;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecom licenses cost
TECHSTRCOSTS;4350520;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;IT support and other IT cost
TECHSTRCOSTS;4350499;Y;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Network maintenance and operations
4350499;4350400;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Maintenance
4350499;4350501;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Network support & outsourcing
4350499;4350503;N;Revenue;N;Y;RC_PLUG;VIP_TOT;CC_TOT;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Internal network maintenance and support cost
TECHSTRCOSTS;4350200;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Utilities - Technical costs
TECHSTRCOSTS;4350999;N;Revenue;Y;Y;RC_PLUG;VIP_TOT;CC_000;MKD_TOT;PROD_000;RP000;LOB;CT_TOT;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;ICP_Export;;;Transport Network costs
TECHSTRCOSTS;4350110;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Operating lease and rent of buildings and land
STROPEX;4360000;N;Revenue;Y;Y;;VIP_TOT;CC_000;;;RP000;LOB;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Costs associated with PT
#root;CF_EXTERNAL;Y;GROUPLABEL;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Cash Flow (External)
CF_EXTERNAL;7000000;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Net Increase in Cash and Cash Equivalents
7000000;7000001;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Free Cash Flow before Financing activities
7000001;7100000;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net Cash from Operating Activities
7100000;7110000;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Profit Before Tax
7110000;PBT_TotC1_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Profit Before Tax
7110000;7110000_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Profit Before Tax - Input PBF
7100000;7120000;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Adjustment to reconcile net profit to cash flows from operating activities
7120000;7120101;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Depreciation (CFS)
7120101;5100000_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Depreciation of property and equipment
7120101;7120101_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Depreciation (CFS) - Input PBF
7120000;7120102;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Amortization (CFS)
7120102;5200000_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Amortization of intangible assets
7120102;7120102_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Amortization (CFS) - Input PBF
7120000;7120103;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Impairment loss (CFS)
7120103;5300000_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Impairment loss
7120103;7120103_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Impairment loss (CFS) - Input PBF
7120000;7120104;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loss/ (Gain) From Disposal Of Non Current Assets
7120104;5400000_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Gains/(losses) on sold property, equipment, intangibles, goodwill and scrapping
7120104;7120104_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Loss/ (Gain) From Disposal Of Non Current Assets - Input PBF
7120000;7120105;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Finance Income (CFS)
7120105;6200000_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Finance income
7120105;7120105_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Finance Income (CFS) - Input PBF
7120000;7120106;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Finance Cost (CFS)
7120106;6100000_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Finance costs
7120106;7120106_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Finance Cost (CFS) - Input PBF
7120000;7120107;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other Non Operating Losses/ (Gain)
7120107;6300000_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Other non operating gains / losses
7120107;7120107_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other Non Operating Losses/ (Gain) - Input PBF
7120000;7120108;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net Foreign Exchange Loss/ (Gain)
7120108;6500000_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Net foreign exchange gain / loss
7120108;7120108_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Net Foreign Exchange Loss/ (Gain) - Inpur PBF
7120000;7120109;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Share Of Loss/ (Gain) Of Associates And Joint Ventures
7120109;6410000_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Profit / loss associates
7120109;6420000_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Profit / loss Jointly controlled entities (JCE)
7120109;7120109_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Share Of Loss/ (Gain) Of Associates And Joint Ventures - Input PBF
7120000;7120110;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Movements in provisions and pensions
7120110;4312106_TotC1_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel cost - share based compensation - denominated in shares
7120110;1210201_CFVAR_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Inventory - obsolescence allowance
7120110;1220401_CFVAR_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts - receivables due from customers
7120110;1220402_CFVAR_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts - receivables due  for roaming
7120110;1220403_CFVAR_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts - receivables due  for interconnect
7120110;1220404_CFVAR_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts - receivables due from dealers and distributors
7120110;1220405_CFVAR_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts - other trade receivables
7120110;1220406_CFVAR_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allow. for doubtful accounts-accounts receivable from sale of long-lived assets
7120110;2220201_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Tax provisions other than for income tax - NCL
7120110;2220401_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Legal provision - NCL
7120110;2220501_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Corporate restructuring cost and termination indemnity - NCL
7120110;2220503_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other provisions - NCL
7120110;2230203_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Allowance for pensions and other post-employment benefits - NCL
7120110;2330201_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Net pension obligations - CL
7120110;2360201_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Tax provisions other than for income tax - CL
7120110;2360401_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Legal provision - CL
7120110;2360501_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Corporate restructuring cost and termination indemnity - CL
7120110;2360502_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other provisions -CL
7120110;7120110_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Movements in provisions and pensions - Inpur PBF
7100000;7121000;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net Interest
7121000;7120111;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Interest paid
7120111;7120111_I;Y;REVENUE;N;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;2;;;ELIM_ELI;Interest paid Input
7120111;1170901_PAY_TotC2_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Cross-currency and interest rate exchange contracts - derivatives - NCA
7120111;1170903_PAY_TotC2_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest rate exchange contracts - derivatives - NCA
7120111;1250901_PAY_TotC2_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Cross-currency and interest rate exchange contracts - derivatives - CA
7120111;1250903_PAY_TotC2_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest rate exchange contracts - derivatives - CA
7120111;1251006_ADD_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Advances for scheduled interest repayments
7120111;2210104_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - interest accrued - NCL
7120111;2210204_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bonds - interest accrued - NCL
7120111;2210302_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans payables within VimpelCom - interest accrued - NCL
7120111;2210402_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Promissory notes payables - interest accrued - NCL
7120111;2210502_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Equipment financing - interest accrued - NCL
7120111;2210602_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans from others -  interest accrued - NCL
7120111;2210701_PAY_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Cross-currency and interest rate exchange contracts - NCL derivatives
7120111;2210703_PAY_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest rate exchange contracts - NCL derivatives
7120111;2210705_PAY_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest accrued - NCL derivatives
7120111;2340106_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - interest accrued - CL
7120111;2340202_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank overdraft - interest accrued - CL
7120111;2340304_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bonds - interest accrued - CL
7120111;2340402_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans payables within VimpelCom - interest accrued - CL
7120111;2340502_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Promissory notes payables - interest accrued - CL
7120111;2340602_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Equipment financing - interest accrued - CL
7120111;2340702_PAY_None_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans from others -  interest accrued - CL
7120111;2340801_PAY_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Cross-currency and interest rate exchange contracts - CL derivatives
7120111;2340803_PAY_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest rate exchange contracts - CL derivatives
7120111;2340805_PAY_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest accrued - CL derivatives
7120111;1170901_COL_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Cross-currency and interest rate exchange contracts - derivatives - NCA
7120111;1170903_COL_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest rate exchange contracts - derivatives - NCA
7120111;1250901_COL_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Cross-currency and interest rate exchange contracts - derivatives - CA
7120111;1250903_COL_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest rate exchange contracts - derivatives - CA
7120111;2210701_COL_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Cross-currency and interest rate exchange contracts - NCL derivatives
7120111;2210703_COL_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest rate exchange contracts - NCL derivatives
7120111;2340801_COL_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Cross-currency and interest rate exchange contracts - CL derivatives
7120111;2340803_COL_TotC2_P;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest rate exchange contracts - CL derivatives
7120111;CF_PLUG_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Plug Interest Paid/Received
7120111;7120111_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Interest paid - Inpur PBF
7121000;7120112;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Interest received
7120112;7120112_I;Y;REVENUE;N;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;2;;;ELIM_ELI;Interest received Input
7120112;1170103_COL_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest receivable from associates - NCA
7120112;1170203_COL_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest receivable from JCE - NCA
7120112;1170303_COL_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest receivable on bank deposits - NCA
7120112;1170402_COL_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans receivable within VimpelCom - interest accrued - NCA
7120112;1170703_COL_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets held to maturity - interest receivable - NCA
7120112;1170906_COL_TotC2_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest receivable on derivatives - NCA
7120112;1250102_COL_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest receivable from associates - CA
7120112;1250202_COL_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest receivable from JCE - CA
7120112;1250303_COL_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest receivable on bank deposits - CA
7120112;1250402_COL_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans receivable within VimpelCom - interest accrued - CA
7120112;1250703_COL_None_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets held to maturity - interest receivable- CA
7120112;1250906_COL_TotC2_M;Y;REVENUE;Y;Y;INTPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Interest receivable on derivatives - CA
7120112;7120112_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Interest received - Input PBF
7100000;7120113;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Income tax paid
7120113;7120113_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;2;;;;Income tax paid Input
7120113;1240101_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax advances
7120113;1240201_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax advances
7120113;2220101_COL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax provisions - NCL
7120113;2350101_COL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Income tax payable
7120113;2350201_COL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax payable
7120113;2360101_COL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax provisions - CL
7120113;1240101_PAY_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax advances
7120113;1240201_PAY_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax advances
7120113;2220101_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax provisions - NCL
7120113;2350101_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Income tax payable
7120113;2350201_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax payable
7120113;2360101_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax provisions - CL
7120113;1240101_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax advances
7120113;1240201_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax advances
7120113;1181000_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Income taxes advances - NCA
7120113;1181000_PAY_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Income taxes advances - NCA
7120113;7120113_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax paid - Input PBF
7100000;7130000;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Changes in working capital
7130000;7130100;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Changes in working capital - Trade
7130100;7130101;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Trade accounts receivable, net
7130101;1220101_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Receivables due from customers, gross
7130101;1220102_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Receivables due for roaming, gross
7130101;1220103_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Receivables due for interconnect, gross
7130101;1220104_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Receivables due from authorised dealers and distributors, gross
7130101;1220105_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accrued receivables on roaming discounts, gross
7130101;1220106_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other trade receivables, gross
7130101;1220107_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Receivables due for Traffic Termination, gross
7130101;7130101_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Trade accounts receivable, net - Input PBF
7130100;7130102;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Inventory (CFS)
7130102;1210101_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Telephone equipment and accessories
7130102;1210102_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;SIM-cards
7130102;1210103_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Scratch cards and connection packages
7130102;1210104_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Advertising and info materials
7130102;1210105_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Equipment for resale
7130102;1210106_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other inventory
7130102;7130102_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Inventory (CFS) - Input PBF
7130100;7130103;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Accounts payable
7130103;2310101_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Trade payables due for interconnect
7130103;2310102_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Trade payables due for roaming 
7130103;2310103_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Trade payables due to agents and dealers
7130103;2310104_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Trade payables due to other suppliers
7130103;2310105_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accrued payables on roaming rebates - CL
7130103;2310106_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Trade payables due for Traffic Termination
7130103;7130103_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Accounts payable - Input PBF
7130100;7131000;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other Changes
7131000;7130104;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other current/non-current assets (trade)
7130104;1180201_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Advance to suppliers and prepayments - NCA
7130104;1180301_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Deferred costs related to connection fees - NCA
7130104;1230102_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Advance to suppliers and prepayments - CA
7130104;1230103_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Current portion of deferred cost related to connection fees - CA
7130104;7130104_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other current/non-current assets (trade) - Input PBF
7131000;7130105;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other current/non-current liabilities (trade)
7130105;2230101_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Deferred revenue - NCL
7130105;2230102_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer loyalty programs liability - NCL
7130105;2330104_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Revenue sharing payable - CL
7130105;2330301_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid connection fee - from customers - CL
7130105;2330302_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Deferred revenue - CL
7130105;2330305_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer loyalty programs liability - CL
7130105;7130105_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other current/non-current liabilities (trade) - Input PBF
7131000;7130106;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Customer advances and deposits
7130106;2330303_CFVAR_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer deposits - CL
7130106;2330304_CFVAR_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer advances - CL
7130106;7130106_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer advances and deposits - Input PBF
7130000;7130200;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Changes in working capital - Non-trade
7130200;7130201;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Input value added tax
7130201;1180101_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Input value added tax - NCA
7130201;1230101_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Input value added tax - CA
7130201;7130201_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Input value added tax - Input PBF
7130200;7130202;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other current/non-current assets (non-trade)
7130202;1180501_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other non-financial assets - NCA
7130202;1220302_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accounts receivable - management fees
7130202;1220303_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other receivables
7130202;1230105_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other non-financial assets - CA
7130202;1250403_CFVAR_None_M;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other receivables within VimpelCom – CA
7130202;1230106_CFVAR_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Indemnification assets - CA
7130202;7130202_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other current/non-current assets (non-trade) - Input PBF
7130200;7130203;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other current/non-current liabilities (non-trade)
7130203;2230305_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Governmental grants liabilities - NCL
7130203;2230401_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other non-financial liabilities - NCL
7130203;2310401_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accounts payable - management fees - CL
7130203;2310402_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other accounts payable - CL
7130203;2330106_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other payables to government authorities - CL
7130203;2330401_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other non-financial liabilities - CL
7130203;2340403_CFVAR_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other payables within VimpelCom – CA
7130203;2310201_VAT_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for property and equipment - CL
7130203;2310202_VAT_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for other intangibles - CL
7130203;2310203_VAT_None_P;Y;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for licenses - CL
7130203;STPLUG_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Short Term Plug Account
7130203;LTPLUG_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Long Term Plug Account
7130203;7130203_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other current/non-current liabilities (non-trade) - Input PBF
7130203;OLPBPLUG_CFS;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Outflow_loan_granted_Proceeds_borrowings Plug Account
7130203;ILRBPLUG_CFS;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Inflow_loan_granted_Repayment_borrowings Plug Account
7130203;INTPLUG_CFS;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Interest_paid_Interest received Plug Account
7130203;DIVPLUG_CFS;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Dividends_paid_Dividends_received Plug Account
7130203;PPEPLUG_CFS;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Sale_PPE_Purchase_PPE Plug Account
7130203;IAPLUG_CFS;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Sale_IA_Purchase_IA Plug Account
7130203;FAPLUG_CFS;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Inflows_outflows_financial assets Plug Account
7130203;WOCPLUG_CFS;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Trade_and_Non_Trade_in_working_capital Plug Account
7130200;7130204;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Taxes receivable/payable (other than income tax)
7130204;1180401_CFVAR_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid taxes, other than income taxes - NCA
7130204;1230104_CFVAR_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid taxes, other than income taxes - CA
7130204;2330101_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payroll Tax payable - CL
7130204;2330102_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Land Tax payable - CL
7130204;2330105_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other Tax payable - CL
7130204;2330103_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Value added tax payable - CL
7130204;2330207_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Social security payables - CL
7130204;7130204_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Taxes receivable/payable (other than income tax) - Input PBF
7130200;7130205;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Due to employees
7130205;2230201_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bonus to employees accrual - NCL
7130205;2230202_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Long term incentive plan for management - NCL
7130205;2330202_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Wages and salaries payables (excl. board members)- CL
7130205;2330203_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Board members remuneration - CL
7130205;2330204_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bonus to employees accrual - CL
7130205;2330205_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Long term incentive plan for management, current portion - CL
7130205;2330206_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Holiday pay accrual - CL
7130205;2330208_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other payables to employees - CL
7130205;7130205_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Due to employees - Input PBF
7100000;7140000;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Changes due to discontinued operations from operating activity
7140000;7140000_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Changes due to discontinued operations from operating activity - Input
7140000;7140000_CALC;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Changes due to discontinued operations from operating activity - Calculated
7000001;7200000;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net cash from investing activities
7200000;7210101;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sale of property and equipment
7210101;1220207_CFVAR_None_M;Y;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accounts receivable from sale of property and equipment
7210101;5400103_TotC1_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Sales value of property and equipment
7210101;5400104_TotC1_None_P;Y;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Sales value of property and equipment within VimpelCom
7210101;7210101_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sale of property and equipment - Input PBF
7200000;7210102;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sale of Intangible assets
7210102;1220208_CFVAR_None_M;Y;REVENUE;Y;Y;IAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accounts receivable from sale of intangible assets
7210102;5400203_TotC1_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Sales value of intangibles and goodwill
7210102;5400204_TotC1_None_P;Y;REVENUE;Y;Y;IAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Sales value of intangibles and goodwill within VimpelCom
7210102;7210102_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sale of Intangible assets - Input PBF
7200000;7210001;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Cash CAPEX Total
7210001;7210103;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Purchase of property, plant and equipment
7210103;1110101_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunications equipment
7210103;1110201_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Land
7210103;1110202_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Buildings, constructions and leasehold improvements
7210103;1110301_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Vehicles, office equipment
7210103;1110401_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Measuring Equipment
7210103;1110501_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other equipment
7210103;1110601_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Equipment not installed
7210103;1110602_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Installation work capitalised
7210103;1110603_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Assets under construction
7210103;1110701_ADD_TotC2_M;Y;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Advances for property and equipment
7210103;2210501_ACC_None_P;Y;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Equipment financing - principal - NCL
7210103;2230301_ACC_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Investment payables to GA - non-financial liabilities - NCL
7210103;2340601_ACC_None_P;Y;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Equipment financing - principal - CL
7210103;2230302_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for property and equipment to GA - non-financial liabilities - NCL
7210103;2310201_CFVAR_None_P;Y;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for property and equipment - CL
7210103;2220301_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provision for decommissioning - NCL
7210103;2360301_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provision for decommissioning - CL
7210103;7210103_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchase of property, plant and equipment - Input PBF
7210001;7210104;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Purchase of Licenses
7210104;1120101_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunications licenses, frequencies and permission
7210104;1120801_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advances for licenses
7210104;2230303_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for licenses to GA - non-financial liabilities - NCL
7210104;2310203_CFVAR_None_P;Y;REVENUE;Y;Y;IAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for licenses - CL
7210104;7210104_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchase of Licenses - Input PBF
7210001;7210105;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Purchase of Other intangible assets
7210105;1120201_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchased software 
7210105;1120202_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Internally developped software 
7210105;1120301_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Brands and trademarks
7210105;1120402_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer relationships - customer acquisition
7210105;1120501_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telephone line capacity
7210105;1120601_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other intangible assets and assets development
7210105;1120701_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advances for intangible assets
7210105;2230304_CFVAR_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for other intangibles - non-financial liabilities - NCL
7210105;2310202_CFVAR_None_P;Y;REVENUE;Y;Y;IAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for other intangibles - CL
7210105;7210105_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchase of Other intangible assets - Input PBF
7200000;7210002;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other Investing cash flows
7210002;7210106;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Outflow for loan granted
7210106;1170101_ADD_None_M;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans granted to associates - principal - NCA
7210106;1170201_ADD_None_M;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans granted to JCE - principal - NCA
7210106;1170401_ADD_None_M;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans recevable within VimpelCom - principal - NCA
7210106;1171003_ADD_None_M;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other loans granted - NCA
7210106;1250101_ADD_None_M;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans granted to associates - principal - CA
7210106;1250201_ADD_None_M;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans granted to JCE - principal - CA
7210106;1250401_ADD_None_M;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans recevable within VimpelCom - principal - CA
7210106;1251004_ADD_None_M;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other loans granted - CA
7210106;1251005_ADD_None_M;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other financial assets- CA
7210106;7210106_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Outflow for loan granted - Input PBF
7210002;7210107;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Inflow from loan granted
7210107;1170101_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans granted to associates - principal - NCA
7210107;1170201_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans granted to JCE - principal - NCA
7210107;1170401_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans recevable within VimpelCom - principal - NCA
7210107;1171003_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other loans granted - NCA
7210107;1250101_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans granted to associates - principal - CA
7210107;1250201_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans granted to JCE - principal - CA
7210107;1250401_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans recevable within VimpelCom - principal - CA
7210107;1251004_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other loans granted - CA
7210107;1251005_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other financial assets- CA
7210107;1170904_COL_TotC2_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Embedded derivatives on financial liabilities - NCA
7210107;1250904_COL_TotC2_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Embedded derivatives on financial liabilities - derivatives - CA
7210107;1170403_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans receivable within VimpelCom – unamortized fees – NCA
7210107;1250404_COL_None_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans receivable within VimpelCom – unamortized fees – CA
7210107;7210107_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Inflow from loan granted - Input PBF
7210002;7210108;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Inflows/(outflows) from financial assets
7210108;1170501_ADD_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets at FVTPL - cost - NCA
7210108;1170601_ADD_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets available for sale - cost - NCA
7210108;1170701_ADD_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets held to maturity - cost - NCA
7210108;1171002_ADD_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other investment - NCA
7210108;1250501_ADD_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets at FVTPL - cost - CA
7210108;1250601_ADD_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets available for sale - cost - CA
7210108;1250701_ADD_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets held to maturity - cost - CA
7210108;1251003_ADD_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other investment - CA
7210108;1170501_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets at FVTPL - cost - NCA
7210108;1170502_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets at FVTPL - FV adjustment - NCA
7210108;1170601_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets available for sale - cost - NCA
7210108;1170602_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets available for sale - FV adjustment - NCA
7210108;1170701_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets held to maturity - cost - NCA
7210108;1170702_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets held to maturity - FV adjustment - NCA
7210108;1171002_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other investment - NCA
7210108;1250501_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets at FVTPL - cost - CA
7210108;1250502_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets at FVTPL - FV adjustment - CA
7210108;1250601_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets available for sale - cost - CA
7210108;1250602_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets available for sale - FV adjustment - CA
7210108;1250701_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets held to maturity - cost - CA
7210108;1250702_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Financial assets held to maturity - FV adjustment - CA
7210108;1251003_COL_None_M;Y;REVENUE;Y;Y;FAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other investment - CA
7210108;7210108_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Inflows/(outflows) from financial assets - Input PBF
7210002;7210109;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Inflows/(outflows) from deposits
7210109;1170301_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - NCA
7210109;1170302_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - restricted - NCA
7210109;1171001_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Security deposits - NCA
7210109;1250301_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - CA
7210109;1250302_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - restricted - CA
7210109;1251001_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Security deposits - CA
7210109;1251002_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Restricted cash - CA
7210109;1170301_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - NCA
7210109;1170302_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - restricted - NCA
7210109;1171001_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Security deposits - NCA
7210109;1250301_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - CA
7210109;1250302_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - restricted - CA
7210109;1251001_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Security deposits - CA
7210109;1251002_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Restricted cash - CA
7210109;7210109_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Inflows/(outflows) from deposits - Input PBF
7210002;7210110;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receipts from / Payment for associates and JCE
7210110;1150101_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investments in associates
7210110;1150201_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investments in jointly controlled entities (JCE)
7210110;1150301_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investment accounted for at cost
7210110;1150101_DISP_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investments in associates
7210110;1150201_DISP_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investments in jointly controlled entities (JCE)
7210110;1150301_DISP_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investment accounted for at cost
7210110;1150101_DIC_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investments in associates
7210110;1150201_DIC_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investments in jointly controlled entities (JCE)
7210110;1150301_DIC_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investment accounted for at cost
7210110;2310302_ACC_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Deferred payment for investment in associates - CL
7210110;2310302_PAY_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Deferred payment for investment in associates - CL
7210110;2310303_ACC_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Deferred payment for investment in JCE - CL
7210110;2310303_PAY_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Deferred payment for investment in JCE - CL
7210110;7210110_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Receipts from / Payment for associates and JCE - Input PBF
7210002;7210111;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Acquisition of a subsidiary, net of cash acquired
7210111;7210111_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;2;;;ELIM;Input for Acquisition of a subsidiary, net of cash acquired
7210111;1130101_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Goodwill
7210111;1140101_ADD_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Investments in subsidiaries
7210111;1170802_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Advances for purchase of investments - NCA
7210111;1250802_ADD_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Advances for purchase of investments - CA
7210111;2310301_ACC_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Deferred payment for investment in subsidiaries - CL
7210111;2310301_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Deferred payment for investment in subsidiaries - CL
7210111;1260000_IN_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalent at end of period of acquired subsidiaries
7210111;7210111_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Acquisition of a subsidiary, net of cash acquired - Input PBF
7210002;7210112;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sales of share in subsidiaries, net of cash
7210112;7210112_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;2;;;ELIM;Input for Proceeds from sales of share ins subsidiaries, net of cash
7210112;1170801_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Receivables from sale of investments - NCA
7210112;1250801_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Receivables from sale of investments - CA
7210112;6300302_TotC1_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Sale value of investments in subsidiaries sold
7210112;1260000_OUT_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalent at end of period of disposed subsidiaries
7210112;7210112_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sales of share in subsidiaries, net of cash - Input PBF
7210002;7210113;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receipt of dividends
7210113;1220301_COL_None_M;Y;REVENUE;Y;Y;DIVPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Dividends receivable
7210113;7210113_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Receipt of dividends - Input PBF
7210002;7210114;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Discontinued operations in investing activity
7210114;7210114_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Discontinued operations in operating activity - Input
7210114;7210114_CALC;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Discontinued operations in operating activity - Calculated
7000000;7300000;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net cash from financing activities
7300000;7310101;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net proceeds from exercise of share options
7310101;7310101_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;2;;;;Net proceeds from exercise of share options Input
7310101;2110411_COL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other reserves
7310101;7310101_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Net proceeds from exercise of share options - Input PBF
7300000;7310102;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Acquisition of non-controlling interest
7310102;7310102_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;2;;;;Input for Acquisition of non-controlling interest
7310102;1170905_COL_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Derivatives over non-controlling interest - derivatives - NCA
7310102;1250905_COL_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Derivatives over non-controlling interest - derivatives - CA
7310102;2120111_COL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Other reserves of non-controlling interests
7310102;2210704_COL_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Derivatives over non-controlling interest - NCL derivatives
7310102;2340804_COL_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Derivatives over non-controlling interest - CL derivatives
7310102;1170905_PAY_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Derivatives over non-controlling interest - derivatives - NCA
7310102;1250905_PAY_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Derivatives over non-controlling interest - derivatives - CA
7310102;2210704_PAY_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Derivatives over non-controlling interest - NCL derivatives
7310102;2340804_PAY_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Derivatives over non-controlling interest - CL derivatives
7310102;7310102_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Acquisition of non-controlling interest - Input PBF
7300000;7310103;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Gross Proceeds from borrowings
7310103;2210101_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - principal - NCL
7310103;2210201_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bonds - principal - NCL
7310103;2210301_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans payables within VimpelCom - principal - NCL
7310103;2210401_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Promissory notes payables - principal - NCL
7310103;2210601_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans from others - principal - NCL
7310103;2340101_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - principal - CL
7310103;2340102_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Current portion of long term bank loans - principal - CL
7310103;2340201_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank overdraft - principal - CL
7310103;2340301_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bonds - principal - CL
7310103;2340401_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans payables within VimpelCom - principal - CL
7310103;2340501_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Promissory notes payables - principal - CL
7310103;2340701_COL_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans from others - principal - CL
7310103;7310103_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Gross Proceeds from borrowings - Input PBF
7300000;7310104;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Fees paid for the borrowings
7310104;2210105_PAY_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - discounts, unamortised fees - NCL
7310104;2210205_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Bonds - discounts, unamortized fees - NCL
7310104;2210303_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans payables within VimpelCom discounts, unamortized fees – NCL
7310104;2340404_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans payables within VimpelCom – unamortized fees – CL
7310104;2210503_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - discounts, unamortized fees - NCL
7310104;2210603_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - unamortized fees - NCL
7310104;2340107_PAY_None_P;Y;REVENUE;Y;Y;OLPBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - discounts, unamortized fees - CL
7310104;2340305_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Bonds - discounts, unamortised fees - CL
7310104;2340603_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - discounts, unamortized fees - CL
7310104;2340703_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - discounts, unamortized fees - CL
7310104;7310104_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Fees paid for the borrowings - Input PBF
7300000;7310105;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Repayment of borrowings
7310105;1170902_COL_TotC2_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Foreign exchange contracts - derivatives - NCA
7310105;1250902_COL_TotC2_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Foreign exchange contracts - derivatives - CA
7310105;2210702_COL_TotC2_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Foreign exchange contracts - NCL derivatives
7310105;2340802_COL_TotC2_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Foreign exchange contracts - CL derivatives
7310105;1170902_PAY_TotC2_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Foreign exchange contracts - derivatives - NCA
7310105;1250902_PAY_TotC2_M;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Foreign exchange contracts - derivatives - CA
7310105;2210101_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - principal - NCL
7310105;2210201_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bonds - principal - NCL
7310105;2210301_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans payables within VimpelCom - principal - NCL
7310105;2210401_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Promissory notes payables - principal - NCL
7310105;2210601_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans from others - principal - NCL
7310105;2210102_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - FV adjustment - NCL
7310105;2210103_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans-unamortized FV adjustment under acquisition method of accounting-NCL
7310105;2210202_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bonds - FV adjustment - NCL
7310105;2210203_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bonds - unamortised FV adjustment under acquisition method of accounting - NCL
7310105;2210702_PAY_TotC2_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Foreign exchange contracts - NCL derivatives
7310105;2340101_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - principal - CL
7310105;2340102_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Current portion of long term bank loans - principal - CL
7310105;2340103_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - FV adjustment - NCL
7310105;2340104_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Current portion of long term bank loans - FV adjustment - CL
7310105;2340105_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank loans - unamortized FV adj. under acquisition method of accounting - CL
7310105;2340201_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bank overdraft - principal - CL
7310105;2340301_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bonds - principal - CL
7310105;2340302_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bonds - FV adjustment - NCL
7310105;2340303_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Bonds - unamortised FV adjustment under acquisition method of accounting - CL
7310105;2340401_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans payables within VimpelCom - principal - CL
7310105;2340501_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Promissory notes payables - principal - CL
7310105;2340601_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Equipment financing - principal - CL
7310105;2340701_PAY_None_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Loans from others - principal - CL
7310105;2340802_PAY_TotC2_P;Y;REVENUE;Y;Y;ILRBPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Foreign exchange contracts - CL derivatives
7310105;7310105_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Repayment of borrowings - Input PBF
7300000;7310100;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other Financing cash flows
7310100;7310106;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Purchase of own shares
7310106;7310106_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;2;;;;Purchase of own shares Input
7310106;2110301_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Treasury shares
7310106;7310106_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchase of own shares - Input PBF
7310100;7310107;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Dividends paid to equity holders of the parent
7310107;2110501_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Retained earnings prior to current year
7310107;2110502_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Retained earnings for current year
7310107;2320101_PAY_None_P;Y;REVENUE;Y;Y;DIVPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Dividends payable to the owners of the parent
7310107;7310107_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Dividends paid to equity holders of the parent - Input PBF
7310100;7310108;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Dividends paid to non-controlling interests
7310108;2120201_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Equity of non-controlling interests - retained earnings prior to current year
7310108;2120202_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Equity of non-controlling interests - retained earnings for current year
7310108;2320102_PAY_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Dividends payable to NCI
7310108;7310108_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Dividends paid to non-controlling interests - Input PBF
7310100;7310109;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sale of treasury stock
7310109;7310109_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;2;;;;Proceeds from sale of treasury stock input
7310109;2110301_COL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Treasury shares
7310109;7310109_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sale of treasury stock - Input PBF
7310100;7310110;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Share capital issued and paid
7310110;2110101_COL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Common shares
7310110;2110102_COL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Convertible voting preferred shares
7310110;2110201_COL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Capital surplus
7310110;7310110_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Share capital issued and paid - Input PBF
7300000;7310111;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sale of non-controlling interests 
7310111;7310111_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;2;;;;Proceeds from sale of non-controlling interests input
7300000;7310112;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Discontinued operations in financing activity
7310112;7310112_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Discontinued operations in financing activity - Input
7310112;7310112_CALC;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Discontinued operations in financing activity - Calculated
CF_EXTERNAL;CF_CHECK;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Net Increase in Cash and Cash Equivalent Accounts
CF_CHECK;7000000;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Net Increase in Cash and Cash Equivalents
CF_CHECK;CASH_OPE;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents at the beginning of  the period
CASH_OPE;1260000_OPE_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents
CASH_OPE;CASH_OPE_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents at the beginning of  the period - Input PBF
CF_CHECK;CASH_CTA_OVER_PLUG;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Net Foreign Exchange Difference
CASH_CTA_OVER_PLUG;CASH_CTA;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Net Foreign Exchange Difference on Cash Accounts
CASH_CTA;CASH_FCTA_I;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;2;;;;Net Foreign Exchange Difference on Cash Accounts
CASH_CTA;1260000_FXOPE_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents - FX Opening
CASH_CTA;1260000_FXAVE_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents - FX Average
CASH_CTA;1260000_FXIN_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents - FX IN
CASH_CTA;1260000_FXOUT_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents - FX OUT
CASH_CTA;1260000_CTAI_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents - CTA input
CASH_CTA;1260000_FXPL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents - FX PL
CASH_CTA;CASH_CTA_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Net Foreign Exchange Difference on Cash Accounts - Input PBF
CASH_CTA_OVER_PLUG;FX_OVER;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Override Foreign Exchange Difference
FX_OVER;1000000_FXOVR_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Total Assets - FX Override
FX_OVER;2200000_FXOVR_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Current Liabilities - FX Override
FX_OVER;2300000_FXOVR_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Non Current Liabilities - FX Override
FX_OVER;2410101_FXOVR_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Liabilities directly associated with the assets held for sale - FX Override
CASH_CTA_OVER_PLUG;RC_OT_PLUG;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;P&L Plug forex total
RC_OT_PLUG;RCPLUG_None_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;RC plug
RC_OT_PLUG;OTPLUG_None_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;OT plug
CF_CHECK;CASH_HFS;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalent reclassified as Held for Sale
CASH_HFS;1260000_HFS_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents
CASH_HFS;CASH_HFS_PBF;Y;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalent reclassified as Held for Sale - Input PBF
CASH_HFS;1380101NR_CTA_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;CTA in discontinued operations
CASH_HFS;1380101NR_FXPL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Forex in PL in discontinued operations
CASH_HFS;1380101NR_CLO_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Closing balance in discontinued operations
CASH_HFS;1380101_OPE_CALC;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Opening balance of discontinued activity
CF_CHECK;CASH_CLO;Y;EXPENSE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalent at end of period
CASH_CLO;1260000_CLO_None_P;Y;EXPENSE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents
CASH_CLO;CASH_CLO_PBF;Y;EXPENSE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalent at end of period - Input PBF
CF_CHECK;CASH_OPE_PER;Y;DYNAMIC;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents at the beginning of  the period (new)
CF_CHECK;CASH_CLO_PER;Y;DYNAMIC;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Cash and Cash Equivalents at the end of  the period (new)
#root;CF_INTERNAL;Y;GROUPLABEL;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Cash Flow
CF_INTERNAL;7000002;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Net Movements in Cash and Cash Equivalents
7000002;7000001_MR;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Free Cash Flow before Financing activities (MR)
7000001_MR;7210116;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Free Cash Flow Before Financing Activities from Continued Operations
7210116;7210117;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Total Cash Flows from Operating and Investing Activities
7210117;7210121;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Total Cash Flows from Operating and Investing Activities Before Licenses
7210121;7210128;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Free Cash Flow from Operating activities
7210128;7210129;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;EBITDA
7210129;EBITDA_TotC1_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Earning before Interest, Taxes, Depreciation and Amortization
7210128;7210130;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Management fees income / expense within VimpelCom
7210130;6600000_TotC1_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Management fees income / expense within VimpelCom
7210128;7210131;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Movements in Working Capital
7210131;7210132;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Accounts Receivables
7210132;7210133;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Trade Receivables
7210133;1220101_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Receivables due from customers, gross
7210133;1220401_CFVAR_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts - receivables due from customers
7210133;1220102_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Receivables due for roaming, gross
7210133;1220402_CFVAR_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts - receivables due  for roaming
7210133;1220103_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Receivables due for interconnect, gross
7210133;1220403_CFVAR_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts - receivables due  for interconnect
7210133;1220104_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Receivables due from authorised dealers and distributors, gross
7210133;1220105_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accrued receivables on roaming discounts, gross
7210133;1220404_CFVAR_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts - receivables due from dealers and distributors
7210133;1220106_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other trade receivables, gross
7210133;1220405_CFVAR_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allowance for doubtful accounts - other trade receivables
7210133;1220107_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Receivables due for Traffic Termination, gross
7210133;1220302_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accounts receivable - management fees
7210133;1220303_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other receivables
7210133;1250403_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other receivables within VimpelCom – CA
7210133;1230106_CFVAR_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Indemnification assets - CA
7210132;7210134;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Advance to suppliers and prepayments
7210134;1180201_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Advance to suppliers and prepayments - NCA
7210134;1180301_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Deferred costs related to connection fees - NCA
7210134;1230102_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Advance to suppliers and prepayments - CA
7210134;1230103_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Current portion of deferred cost related to connection fees - CA
7210132;7210135;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Input VAT and prepaid taxes
7210135;1180101_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Input value added tax - NCA
7210135;1230101_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Input value added tax - CA
7210135;1180401_CFVAR_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid taxes, other than income taxes - NCA
7210135;1230104_CFVAR_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid taxes, other than income taxes - CA
7210135;1180501_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other non-financial assets - NCA
7210135;1230105_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other non-financial assets - CA
7210131;7210136;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Inventory Devices
7210136;1210101_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Telephone equipment and accessories
7210136;1210102_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;SIM-cards
7210136;1210103_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Scratch cards and connection packages
7210136;1210104_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Advertising and info materials
7210136;1210105_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Equipment for resale
7210136;1210106_CFVAR_None_M;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other inventory
7210136;1210201_CFVAR_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Inventory - obsolescence allowance
7210131;7210137;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Accounts payable
7210137;7210138;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Trade payables
7210138;2310101_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Trade payables due for interconnect
7210138;2310102_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Trade payables due for roaming 
7210138;2310103_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Trade payables due to agents and dealers
7210138;2310104_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Trade payables due to other suppliers
7210138;2310105_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accrued payables on roaming rebates - CL
7210138;2310106_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Trade payables due for Traffic Termination
7210138;2310401_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accounts payable - management fees - CL
7210138;2310402_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other accounts payable - CL
7210137;7210139;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Payables fixed assets and other liabilities
7210139;2230305_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Governmental grants liabilities - NCL
7210139;2310201_VAT_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for property and equipment - CL
7210139;2310202_VAT_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for other intangibles - CL
7210139;2310203_VAT_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for licenses - CL
7210139;2330106_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other payables to government authorities - CL
7210139;2330401_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other non-financial liabilities - CL
7210139;2230401_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other non-financial liabilities - NCL
7210139;OLPBPLUG_CFS;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Outflow_loan_granted_Proceeds_borrowings Plug Account
7210139;ILRBPLUG_CFS;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Inflow_loan_granted_Repayment_borrowings Plug Account
7210139;INTPLUG_CFS;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Interest_paid_Interest received Plug Account
7210139;DIVPLUG_CFS;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Dividends_paid_Dividends_received Plug Account
7210139;PPEPLUG_CFS;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Sale_PPE_Purchase_PPE Plug Account
7210139;IAPLUG_CFS;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Sale_IA_Purchase_IA Plug Account
7210139;FAPLUG_CFS;N;REVENUE;Y+W1769:AD1770;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Inflows_outflows_financial assets Plug Account
7210139;WOCPLUG_CFS;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Trade_and_Non_Trade_in_working_capital Plug Account
7210137;7210140;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Customer related liabilities and deferred revenues
7210140;2230101_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Deferred revenue - NCL
7210140;2230102_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer loyalty programs liability - NCL
7210140;2330301_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Prepaid connection fee - from customers - CL
7210140;2330302_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Deferred revenue - CL
7210140;2330305_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer loyalty programs liability - CL
7210140;2330303_CFVAR_TotC2_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer deposits - CL
7210140;2330304_CFVAR_TotC2_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer advances - CL
7210137;7210141;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;VAT payable and revenue sharing
7210141;2330104_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Revenue sharing payable - CL
7210141;2330101_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payroll Tax payable - CL
7210141;2330102_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Land Tax payable - CL
7210141;2330105_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other Tax payable - CL
7210141;2330103_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Value added tax payable - CL
7210137;7210142;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Personnel related payables
7210142;2230203_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Allowance for pensions and other post-employment benefits - NCL
7210142;2330201_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Net pension obligations - CL
7210142;2230201_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bonus to employees accrual - NCL
7210142;2230202_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Long term incentive plan for management - NCL
7210142;2330202_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Wages and salaries payables (excl. board members)- CL
7210142;2330203_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Board members remuneration - CL
7210142;2330204_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Bonus to employees accrual - CL
7210142;2330205_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Long term incentive plan for management, current portion - CL
7210142;2330206_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Holiday pay accrual - CL
7210142;2330208_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other payables to employees - CL
7210142;2330207_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Social security payables - CL
7210128;7210143;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Movements in Provision
7210143;4312106_TotC1_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Personnel cost - share based compensation - denominated in shares
7210143;2220201_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Tax provisions other than for income tax - NCL
7210143;2220401_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Legal provision - NCL
7210143;2220501_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Corporate restructuring cost and termination indemnity - NCL
7210143;2220503_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other provisions - NCL
7210143;2360201_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Tax provisions other than for income tax - CL
7210143;2360401_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Legal provision - CL
7210143;2360501_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Corporate restructuring cost and termination indemnity - CL
7210143;2360502_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other provisions -CL
7210143;2340403_CFVAR_None_P;N;REVENUE;Y;Y;WOCPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Other payables within VimpelCom – CA
7210143;STPLUG_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Short Term Plug Account
7210143;LTPLUG_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Long Term Plug Account
7210128;7210144;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net Tax Paid
7210144;7210145;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Income Tax Provisions and Other Non-WC Items
7210145;7120113_I;N;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;2;;;;Income tax paid Input
7210145;2220101_COL_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax provisions - NCL
7210145;2360101_COL_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax provisions - CL
7210145;2220101_PAY_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax provisions - NCL
7210145;2360101_PAY_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax provisions - CL
7210145;1181000_COL_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Income taxes advances - NCA
7210145;1181000_PAY_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Income taxes advances - NCA
7210145;2350101_ACC_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Income tax payable
7210145;2350201_ACC_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax payable
7210145;2350101_FXPL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Income tax payable
7210145;2350201_FXPL_None_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax payable
7210144;7210146;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net Tax Paid (Working Capital)
7210146;1240101_COL_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax advances
7210146;1240201_COL_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax advances
7210146;2350101_COL_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Income tax payable
7210146;2350201_COL_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax payable
7210146;1240101_PAY_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax advances
7210146;1240201_PAY_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax advances
7210146;2350101_PAY_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Income tax payable
7210146;2350201_PAY_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax payable
7210146;1240101_ADD_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Income tax advances
7210146;1240201_ADD_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax advances
7210146;2350101_ACC_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Income tax payable
7210146;2350201_ACC_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax payable
7210146;2350101_FXPL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Current Income tax payable
7210146;2350201_FXPL_None_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Withholding tax payable
7210121;7200000_MR;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Free Cash Flow from Investing activities (MR)
7200000_MR;7210122;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Cash CAPEX w/o Licenses
7210122;7210123;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Capital Installed
7210123;1110101_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunications equipment
7210123;1110201_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Land
7210123;1110202_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Buildings, constructions and leasehold improvements
7210123;1110301_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Vehicles, office equipment
7210123;1110401_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Measuring Equipment
7210123;1110501_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other equipment
7210123;1110602_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Installation work capitalised
7210123;2210501_ACC_None_P;N;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Equipment financing - principal - NCL
7210123;2340601_ACC_None_P;N;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Equipment financing - principal - CL
7210123;2220301_PAY_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provision for decommissioning - NCL
7210123;2360301_PAY_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Provision for decommissioning - CL
7210123;1120201_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Purchased software 
7210123;1120202_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Internally developped software 
7210123;1120301_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Brands and trademarks
7210123;1120402_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Customer relationships - customer acquisition
7210123;1120501_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telephone line capacity
7210123;1120601_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other intangible assets and assets development
7210123;1110601_REC_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Equipment not installed
7210123;1110603_REC_TotC2_P;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Assets under construction
7210122;7210124;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Working Capital (Cash CAPEX)
7210124;7210147;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Working Capital (Network equipment)
7210147;1110601_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Equipment not installed
7210147;1110603_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Assets under construction
7210147;1110601_REC_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Equipment not installed
7210147;1110603_REC_TotC2_M;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Assets under construction
7210124;7210148;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Working Capital (Advances for fixed assets)
7210148;1110701_ADD_TotC2_M;N;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Advances for property and equipment
7210148;1120701_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advances for intangible assets
7210124;7210149;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Working Capital (Payables for fixed assets)
7210149;2230302_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for property and equipment to GA - non-financial liabilities - NCL
7210149;2310201_CFVAR_None_P;N;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for property and equipment - CL
7210149;2230301_ACC_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Investment payables to GA - non-financial liabilities - NCL
7210149;2230304_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for other intangibles - non-financial liabilities - NCL
7210149;2310202_CFVAR_None_P;N;REVENUE;Y;Y;IAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for other intangibles - CL
7200000_MR;7210125;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Disposal of Capital Assets
7210125;7210126;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Profit on Disposal
7210126;5400103_TotC1_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Sales value of property and equipment
7210126;5400104_TotC1_None_P;N;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Sales value of property and equipment within VimpelCom
7210126;5400203_TotC1_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Sales value of intangibles and goodwill
7210126;5400204_TotC1_None_P;N;REVENUE;Y;Y;IAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Sales value of intangibles and goodwill within VimpelCom
7210125;7210127;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Disposal of Capital Assets (Working Capital)
7210127;1220207_CFVAR_None_M;N;REVENUE;Y;Y;PPEPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accounts receivable from sale of property and equipment
7210127;1220208_CFVAR_None_M;N;REVENUE;Y;Y;IAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Accounts receivable from sale of intangible assets
7210127;1220406_CFVAR_None_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;;Allow. for doubtful accounts-accounts receivable from sale of long-lived assets
7210117;7210118;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Licenses
7210118;7210119;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Capital Additions (Licenses)
7210119;1120101_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Telecommunications licenses, frequencies and permission
7210118;7210120;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Working Capital (Licenses)
7210120;1120801_ADD_TotC2_M;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Advances for licenses
7210120;2230303_CFVAR_None_P;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for licenses to GA - non-financial liabilities - NCL
7210120;2310203_CFVAR_None_P;N;REVENUE;Y;Y;IAPLUG_CFS;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;CFS_ELI;Payables for licenses - CL
7210116;7121000;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net Interest
7210116;7210002_MR;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other Investing cash flows (MR)
7210002_MR;7210106;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Outflow for loan granted
7210002_MR;7210107;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Inflow from loan granted
7210002_MR;7210108;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Inflows/(outflows) from financial assets
7210002_MR;7210109;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Inflows/(outflows) from deposits
7210002_MR;7210110;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receipts from / Payment for associates and JCE
7210002_MR;7210111;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Acquisition of a subsidiary, net of cash acquired
7210002_MR;7210112;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sales of share in subsidiaries, net of cash
7210002_MR;7210113;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receipt of dividends
7000001_MR;7210115;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Free Cash Flow before Financing from Discontinued
7210115;7140000;N;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Changes due to discontinued operations from operating activity
7210115;7210114;N;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Discontinued operations in investing activity
7000002;7300000_MR;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net cash from financing activities (MR)
7300000_MR;7310103;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Gross Proceeds from borrowings
7300000_MR;7310104;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Fees paid for the borrowings
7300000_MR;7310105;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Repayment of borrowings
7300000_MR;7310113;Y;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other Financing cash flows Total
7310113;7310101;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Net proceeds from exercise of share options
7310113;7310102;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Acquisition of non-controlling interest
7310113;7310100;N;REVENUE;Y;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other Financing cash flows
7310113;7310111;N;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Proceeds from sale of non-controlling interests 
7300000_MR;7310112;N;REVENUE;N;Y;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Discontinued operations in financing activity
#root;RATES;Y;GroupLabel;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Currency Exchange Rates
RATES;OPERATE;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_RATES;Y;;1;;;;Opening Exchange Rate
RATES;AVERATE;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_RATES;Y;;1;;;;Average Exchange Rate
RATES;CLORATE;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_RATES;Y;;1;;;;Closing Exchange Rate
RATES;AVERATEQTD;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_RATES;Y;;1;;;;Average QTD Exchange Rate
RATES;AVERATE_IN;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate IN
AVERATE_IN;AVERATE_IN1;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate IN 1
AVERATE_IN;AVERATE_IN2;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate IN 2
AVERATE_IN;AVERATE_IN3;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate IN 3
AVERATE_IN;AVERATE_IN4;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate IN 4
AVERATE_IN;AVERATE_IN5;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate IN 5
RATES;AVERATE_OUT;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate OUT
AVERATE_OUT;AVERATE_OUT1;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate OUT 1
AVERATE_OUT;AVERATE_OUT2;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate OUT 2
AVERATE_OUT;AVERATE_OUT3;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate OUT 3
AVERATE_OUT;AVERATE_OUT4;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate OUT 4
AVERATE_OUT;AVERATE_OUT5;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_FINANCIAL;Y;;1;;;;Spot Rate OUT 5
#root;CHECK;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;CHECK
CHECK;VALCHECK;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check Phase 1
VALCHECK;BS_CHECK;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Balance Sheet Check
CHECK;VALCHECK_2;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check Phase 2
CHECK;VALCHECK_2_NEW;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check Phase 2
VALCHECK_2_NEW;BSMCHECK_05_ERR_IFA1;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on IFA accounts in combination with VD101 is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_IFA2;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on IFA accounts in combination with VD102 is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_IFA3;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on IFA accounts in combination with VD104 is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_PPE1;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on PPE accounts in combination with VD101 is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_PPE2;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on PPE accounts in combination with VD103 is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_PPE3;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on PPE accounts in combination with VD104 is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_INVEST1;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on INVEST accounts in combination with VD101 is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_INVEST2;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on INVEST accounts in combination with VD104 is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_NCFA;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on NCFA accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_CURFA;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on CURFA accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_STRECPAY;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on STRECPAY accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_INVENT;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on INVENT accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_EQUITY;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on EQUITY accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_NCFL;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on NCFL accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_CURFL;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on CURFL accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_PROV;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on PROV accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_OTHERNF;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on OTHERNF accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_DERIV;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR  on DERIV accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_CASH;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on CASH accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_HFS;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on HFS accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_05_ERR_TAXDIV;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ERR on TAXDIV accounts is below threshold
VALCHECK_2_NEW;BSMCHECK_06_DAM_IFA;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that DAM flow for account 1120000 agrees with PL data
VALCHECK_2_NEW;BSMCHECK_06_IMP_IFA;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that IMP+IMPR flow for account 1120000 agrees with PL data
VALCHECK_2_NEW;BSMCHECK_06_DAM_PPE;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that DAM flow for account 1110000 agrees with PL data
VALCHECK_2_NEW;BSMCHECK_06_IMP_PPE;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that IMP+IMPR flow for account 1110000 agrees with PL data
VALCHECK_2_NEW;BSMCHECK_06_ACC_PPE;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that ACC flow agrees for accounts 1110101, 1110202, 2220301, 2360301
CHECK;VALCHECK_3;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;3;;;;CHECK Disclosures
VALCHECK_3;DISCHECK_01_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrowings by interest and currency - Bonds Check
VALCHECK_3;DISCHECK_02_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrowings by interest and currency - Liabil. to Banks Disclosures
VALCHECK_3;DISCHECK_03_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrow. by interest and currency - Other Int.Bearing Liabil. Check
VALCHECK_3;DISCHECK_04_CK;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Commitments - Internal Parity Check
VALCHECK_3;DISCHECK_05_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Bank Loans and Bonds Check
VALCHECK_3;DISCHECK_06_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Equipment Financing Check
VALCHECK_3;DISCHECK_07_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Loans from others Check
VALCHECK_3;DISCHECK_08_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Loans from others Check
VALCHECK_3;DISCHECK_09_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Deposits Expiry Check
VALCHECK_3;DISCHECK_10_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financial Receivables Expiry Check
VALCHECK_3;DISCHECK_11_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Financial Instruments Check
VALCHECK_3;DISCHECK_12_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Loans granted, deposits and fin.assets Check
VALCHECK_3;DISCHECK_13_CK;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Trade and other receivables Check
VALCHECK_3;DISCHECK_14_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Cash and cash equivalents Check
VALCHECK_3;DISCHECK_15_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Total financ. Instrum. at fair values, liabil. Check
VALCHECK_3;DISCHECK_16_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Total Other financial liabil. at amortized cost Check
VALCHECK_3;DISCHECK_17_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Trade and Other Payables Check
VALCHECK_3;DISCHECK_18_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values Hierarchy - Fin. Instrum. at fair values, assets Check
VALCHECK_3;DISCHECK_19_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values Hierarchy - Fin. Instrum. at fair value, liabilities Check
VALCHECK_3;DISCHECK_20_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets av sale - Amount (Fair value) Check
VALCHECK_3;DISCHECK_21_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets FVTP&L -Amount (Fair value) Check
VALCHECK_3;DISCHECK_22_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets meas cost - Amount (cost) Check
VALCHECK_3;DISCHECK_23_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Transaction total Check
VALCHECK_3;DISCHECK_24_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Fin. assets available for sale Check
VALCHECK_3;DISCHECK_25_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Transaction total Check
VALCHECK_3;DISCHECK_26_CK;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Fin. assets held to maturity Check
VALCHECK_3;DISCHECK_27_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Internal Rate of return - Internal rate of return Check
VALCHECK_3;DISCHECK_28_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Bank loans and bonds Check
VALCHECK_3;DISCHECK_29_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Bonds Check
VALCHECK_3;DISCHECK_30_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Equipment financing Check
VALCHECK_3;DISCHECK_31_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Loans from others Check
VALCHECK_3;DISCHECK_32_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Derivatives over non-controlling interest  Check
VALCHECK_3;DISCHECK_33_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Derivative financial instruments  Check
VALCHECK_3;DISCHECK_34_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Telecommunication licence payable  Check
VALCHECK_3;DISCHECK_35_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Trade and other pay and dividend pay  Check
VALCHECK_3;DISCHECK_36_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Current  Check
VALCHECK_3;DISCHECK_37_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Non-current  Check
VALCHECK_3;DISCHECK_38_CK;Y;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Curr and Not Curr Total  Check
CHECK;VALCHECK_4;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;CHECK Tax
CHECK;CASHFLOW_CHECK;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Cash Flow check
CHECK;SOFTCHECK;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Soft Checks
SOFTCHECK;BSPLUG_CHECK;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Balance Sheet Plug Accounts Check
SOFTCHECK;PLPLUG_CHECK;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Profit and Loss Plug Accounts Check
SOFTCHECK;CF_CHECK1;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];Y;N;ACC_FINANCIAL;Y;;1;;;;Outflow loan granted - Proceeds borrowings
SOFTCHECK;CF_CHECK2;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];Y;N;ACC_FINANCIAL;Y;;1;;;;Inflow loan granted - Repayment borrowings
SOFTCHECK;CF_CHECK3;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];Y;N;ACC_FINANCIAL;Y;;1;;;;Interest paid - Interest received
SOFTCHECK;CF_CHECK4;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];Y;N;ACC_FINANCIAL;Y;;1;;;;Dividends paid - Dividends received
SOFTCHECK;CF_CHECK5;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];Y;N;ACC_FINANCIAL;Y;;1;;;;Sale of PPE - Purchase of PPE
SOFTCHECK;CF_CHECK6;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];Y;N;ACC_FINANCIAL;Y;;1;;;;Sale of IA - Purchase of IA
SOFTCHECK;CF_CHECK7;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];Y;N;ACC_FINANCIAL;Y;;1;;;;Changes in working capital - Trade
SOFTCHECK;CF_CHECK8;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];Y;N;ACC_FINANCIAL;Y;;1;;;;Changes in working capital - Non-trade
SOFTCHECK;CF_CHECK9;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];Y;N;ACC_FINANCIAL;Y;;1;;;;Inflows/(outflows) from financial assets
SOFTCHECK;CF_CHECK10;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;[ICP Entities];Y;N;ACC_FINANCIAL;Y;;1;;;;Inflows/(outflows) from deposits
SOFTCHECK;CHECK_1;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw  imp.am. & depr. of excess value in ass. AND Decrease of Inv. In ass.
SOFTCHECK;CHECK_2;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw book value of ass.sold AND disp. of inv. In ass.
SOFTCHECK;CHECK_3;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw imp.am. & depr. of excess value in jce AND Decrease of Inv. In jce
SOFTCHECK;CHECK_4;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw book value of jce sold AND disp. of inv. In jce
SOFTCHECK;CHECK_5;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw allowance on BS and IS - allowance for doubtful accounts
SOFTCHECK;CHECK_6;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw allowance on BS and IS - Property and equipment
SOFTCHECK;CHECK_7;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw depreciation on BS and IS - telecommunication equipment
SOFTCHECK;CHECK_8;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw depreciation on BS and IS - build., constr. and leasehold
SOFTCHECK;CHECK_9;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw depreciation on BS and IS - Vehicles, office equipment
SOFTCHECK;CHECK_10;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw depreciation on BS and IS - Measuring equipment
SOFTCHECK;CHECK_11;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw depreciation on BS and IS - Other equipment
SOFTCHECK;CHECK_12;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw amortization on BS and IS - Intangible assets (excl. goodwill)
SOFTCHECK;CHECK_13;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw amortization on BS and IS - TLC licenses, frequencies and permissions
SOFTCHECK;CHECK_14;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw amortization on BS and IS - Purch. softw. and Int. dev. softw.
SOFTCHECK;CHECK_15;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw amortization on BS and IS - Brands and trademarks
SOFTCHECK;CHECK_16;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw amortization on BS and IS - Customer relationships acquired in BC
SOFTCHECK;CHECK_17;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw amortization on BS and IS - Telephone line capacity
SOFTCHECK;CHECK_18;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw amortization on BS and IS - Other intangible assets
SOFTCHECK;CHECK_19;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Telecommunication equipment
SOFTCHECK;CHECK_20;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Land
SOFTCHECK;CHECK_21;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - build., constr. and leasehold
SOFTCHECK;CHECK_22;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Vehicles, office equipment
SOFTCHECK;CHECK_23;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Measuring equipment
SOFTCHECK;CHECK_24;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Other equipment
SOFTCHECK;CHECK_25;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Equipment not installed
SOFTCHECK;CHECK_26;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Assets under construction
SOFTCHECK;CHECK_27;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Advances for property and equipment
SOFTCHECK;CHECK_28;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - TLC licenses, frequencies and permissions
SOFTCHECK;CHECK_29;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Purchased software
SOFTCHECK;CHECK_30;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Internally developed software
SOFTCHECK;CHECK_31;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Brands and trademarks
SOFTCHECK;CHECK_32;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Customer relationships acquired in BC
SOFTCHECK;CHECK_33;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Customer relationships - CA
SOFTCHECK;CHECK_34;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Telephone line capacity
SOFTCHECK;CHECK_35;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Other intangible assets
SOFTCHECK;CHECK_36;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Advances for intangible assets
SOFTCHECK;CHECK_37;Y;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Parity bw impairment on BS and IS - Impairment of goodwill
SOFTCHECK;CHECK_38;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that Addition movement member ADD in combination with VD101 is positive
SOFTCHECK;CHECK_39;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that Contribution movement CON in combination with VD101 is positive
SOFTCHECK;CHECK_40;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of Amortization DAM in combination with VD102 to be negative
SOFTCHECK;CHECK_41;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of Depreciation DAM in combination with VD103 to be negative
SOFTCHECK;CHECK_42;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of Impairment IMP in combination with VD104 to be negative
SOFTCHECK;CHECK_43;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of IMPR in combination with VD104 to be positive
SOFTCHECK;CHECK_44;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Disposal movement DISP in combination with VD101 to be negative
SOFTCHECK;CHECK_45;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Disposal movement DISP in combination with VD102 to be positive
SOFTCHECK;CHECK_46;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Disposal movement DISP in combination with VD103 to be positive
SOFTCHECK;CHECK_47;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Disposal movement DISP in combination with VD104 to be positive
SOFTCHECK;CHECK_48;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Write off movement DEL in combination with VD101 to be negative
SOFTCHECK;CHECK_49;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Write off movement DEL in combination with VD102 to be positive
SOFTCHECK;CHECK_50;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Write off movement DEL in combination with VD103 to be positive
SOFTCHECK;CHECK_51;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Write off movement DEL in combination with VD104 to be positive
SOFTCHECK;CHECK_52;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of IN1-5 movement in combination with VD101 to be positive
SOFTCHECK;CHECK_53;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of IN1-5 movement in combination with VD102 to be negative
SOFTCHECK;CHECK_54;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of IN1-5 movement in combination with VD103 to be negative
SOFTCHECK;CHECK_55;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of IN1-5 movement in combination with VD104 to be negative
SOFTCHECK;CHECK_56;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of OUT1-5 movement in combination with VD101 to be negative
SOFTCHECK;CHECK_57;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of OUT1-5 movement in combination with VD102 to be positive
SOFTCHECK;CHECK_58;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of OUT1-5 movement in combination with VD103 to be positive
SOFTCHECK;CHECK_59;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of OUT1-5 movement in combination with VD104 to be positive
SOFTCHECK;CHECK_60;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing of CAP in combination with VD101 to be positive
SOFTCHECK;CHECK_61;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Accrual movement member ACC to be positive
SOFTCHECK;CHECK_62;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Release movement member REL to be negative
SOFTCHECK;CHECK_63;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check signing Payment movement member PAY to be negative
SOFTCHECK;CHECK_64;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check REC for long- and short-term Income tax provision to be zero
SOFTCHECK;CHECK_65;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check REC for long- and short-term Tax provisisions other than income to be zero
SOFTCHECK;CHECK_66;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check REC for long- and short-term Provisision for decommissioning to be zero
SOFTCHECK;CHECK_67;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check REC for long- and short-term Legal provisision to be zero
SOFTCHECK;CHECK_68;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check REC for long- and short-term Restructuring provisision to be zero
SOFTCHECK;CHECK_69;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check REC for long- and short-term Other provisisions to be zero
SOFTCHECK;BSMCHECK_01_TRA;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that TRA movement member is balancing on entity level
SOFTCHECK;BSMCHECK_02_REC;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC movement member is balancing on entity level
SOFTCHECK;BSMCHECK_03_IN1;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that IN1 movement member is balancing on entity level
SOFTCHECK;BSMCHECK_03_IN2;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that IN2 movement member is balancing on entity level
SOFTCHECK;BSMCHECK_03_IN3;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that IN3 movement member is balancing on entity level
SOFTCHECK;BSMCHECK_03_IN4;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that IN4 movement member is balancing on entity level
SOFTCHECK;BSMCHECK_03_IN5;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that IN5 movement member is balancing on entity level
SOFTCHECK;BSMCHECK_04_OUT1;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that OUT1 movement member is balancing on entity level
SOFTCHECK;BSMCHECK_04_OUT2;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that OUT2 movement member is balancing on entity level
SOFTCHECK;BSMCHECK_04_OUT3;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that OUT3 movement member is balancing on entity level
SOFTCHECK;BSMCHECK_04_OUT4;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that OUT4 movement member is balancing on entity level
SOFTCHECK;BSMCHECK_04_OUT5;Y;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that OUT5 movement member is balancing on entity level
SOFTCHECK;BSMCHECK_07_REC_IFA1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across IFA accounts VD101
SOFTCHECK;BSMCHECK_07_REC_IFA2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across IFA accounts VD102
SOFTCHECK;BSMCHECK_07_REC_IFA3;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across IFA accounts VD104
SOFTCHECK;BSMCHECK_07_DEL_IFA;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that DEL is balanced (total zero) across IFA accounts
SOFTCHECK;BSMCHECK_07_REC_PPE1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across PPE accounts VD101
SOFTCHECK;BSMCHECK_07_REC_PPE2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across PPE accounts VD103
SOFTCHECK;BSMCHECK_07_REC_PPE3;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across PPE accounts VD104
SOFTCHECK;BSMCHECK_07_DEL_PPE;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that DEL is balanced (total zero) across PPE accounts
SOFTCHECK;BSMCHECK_07_REC_INVEST1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across INVEST accounts VD101
SOFTCHECK;BSMCHECK_07_REC_INVEST2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across INVEST accounts VD104
SOFTCHECK;BSMCHECK_07_REC_INVEST3;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced across INVEST accounts VD101 USD override
SOFTCHECK;BSMCHECK_07_REC_INVEST4;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced across INVEST accounts VD104 USD override
SOFTCHECK;BSMCHECK_07_DEL_INVEST1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that DEL is balanced (total zero) across INVEST accounts
SOFTCHECK;BSMCHECK_07_DEL_INVEST2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that DEL is balanced across INVEST accounts USD overrides
SOFTCHECK;BSMCHECK_07_REC_NCFA1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across NCFA accounts 3rd party
SOFTCHECK;BSMCHECK_07_REC_NCFA2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across NCFA accounts IC
SOFTCHECK;BSMCHECK_07_DEL_NCFA;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that DEL is balanced (total zero) across NCFA accounts
SOFTCHECK;BSMCHECK_07_REC_CurFA1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across CurFA accounts 3rd part
SOFTCHECK;BSMCHECK_07_REC_CurFA2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across CurFA accounts IC
SOFTCHECK;BSMCHECK_07_DEL_CurFA;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that DEL is balanced (total zero) across CurFA accounts
SOFTCHECK;BSMCHECK_07_REC_RECPAY1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across STREC accounts
SOFTCHECK;BSMCHECK_07_REC_RECPAY2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across STPAY accounts
SOFTCHECK;BSMCHECK_07_DEL_RECPAY;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that DEL is balanced (total zero) across STREC accounts
SOFTCHECK;BSMCHECK_07_DEL_INVENT;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that DEL is balanced (total zero) across INVENT accounts
SOFTCHECK;BSMCHECK_07_REC_EQUITY;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across EQUITY accounts
SOFTCHECK;BSMCHECK_07_REC_NCFL1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across NCFL accounts 3rd part
SOFTCHECK;BSMCHECK_07_REC_NCFL2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across NCFL accounts IC
SOFTCHECK;BSMCHECK_07_REC_CurFL1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across CurFL accounts 3rd part
SOFTCHECK;BSMCHECK_07_REC_CurFL2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across CurFL accounts IC
SOFTCHECK;BSMCHECK_07_REC_PROV1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across PROV accounts LongTerm
SOFTCHECK;BSMCHECK_07_REC_PROV2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across PROV accounts ShortTerm
SOFTCHECK;BSMCHECK_07_REC_OtherNF1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across Non-Financial Assets
SOFTCHECK;BSMCHECK_07_REC_OtherNF2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across Non-Financial Liabs
SOFTCHECK;BSMCHECK_07_REC_DERIV;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across DERIV accounts
SOFTCHECK;BSMCHECK_07_REC_CASH;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across CASH accounts
SOFTCHECK;BSMCHECK_07_REC_TAXDIV1;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across dividend accounts
SOFTCHECK;BSMCHECK_07_REC_TAXDIV2;Y;Asset;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;Y;ACC_FINANCIAL;Y;;1;;;;Check that REC is balanced (total zero) across tax accounts
#root;8000000;Y;GroupLabel;N;N;;;DIS_DET02;;;DIS_DET01;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Disclosure accounts
8000000;8010000;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Financial lease liabilities
8010000;8010001;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Gross finance lease - minimum lease payments
8010000;8010002;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Future finance charges on finance leases
8010000;8010003;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Present value of finance lease liabilities
8000000;8020000;Y;Liability;Y;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Borrowings by interest & currencies
8020000;8020001;Y;Liability;N;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Bonds
8020000;8020002;Y;Liability;N;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Liabilities to bank
8020000;8020003;Y;Liability;N;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Financial lease liabilities
8020000;8021000;Y;Liability;Y;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Other interest - bearing liabilities
8021000;8021001;Y;Liability;N;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Other
8020000;8020004;Y;Liability;N;N;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Other non-interest bearing liabilities
8020000;8020005;Y;Liability;N;N;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Derivatives
8000000;8030000;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Foreign currency risk
8030000;8030001;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Total borrowing by currency of issue
8030000;8030002;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Notional amount of currency derivatives
8030000;8031000;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Borrowings after derivatives effect of which (after derivative effect)
8031000;8031001;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Floating rate borrowings
8031000;8031002;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Fixed rate borrowings
8000000;8040000;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Interest rate sensitivity
8040000;8040001;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Increase/decrease in basis points
8040000;8040002;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Effect on profit before tax
8040000;8040003;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Effect on equity
8000000;8050000;Y;Asset;N;N;;;;;;CFX_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;FX rate sensitivity
8050000;8050001;Y;Asset;N;N;;;;;;CFX_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Effect on profit before tax
8050000;8050002;Y;Asset;N;N;;;;;;CFX_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Effect on equity
8000000;8060000;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Liquidity risk
8060000;8060001;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Bank loans and bonds
8060000;8060002;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Bonds
8060000;8060003;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Shareholders loans
8060000;8060004;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Equipment financing
8060000;8060005;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Loans from others
8060000;8060006;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Derivatives over non-controlling interest
8060000;8061000;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Derivative financial instruments
8061000;8061001;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Gross cash inflows
8061000;8061002;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Gross cash outflows
8060000;8060007;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Telecommunication lincense payable
8060000;8060008;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Trade and other payables and dividend payments
8000000;8070000;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Fair values
8070000;8071000;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Total financial assets
8071000;8071100;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Total financial instruments at fair value, assets
8071100;8071110;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial instruments at fair value through profit or loss
8071110;8071210;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Derivatives not designated as hedges
8071210;8071211;Y;Asset;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Cross-currency and interest rate exchange contracts
8071210;8071212;Y;Asset;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Foreign exchange contracts
8071210;8071213;Y;Asset;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Embedded derivatives on senior secured notes
8071210;8071214;Y;Asset;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Derivatives over non-controlling interest
8071100;8071120;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial instruments at fair value
8071120;8071230;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Derivatives designated as fair value hedges
8071230;8071231;Y;Asset;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Interest rate exchange contracts
8071120;8071240;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Derivatives designated as cashflow hedges
8071240;8071241;Y;Asset;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Cross-currency and interest rate exchange contracts
8071000;8071200;Y;Asset;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Total loans granted, deposits and other financial assets
8071200;8071201;Y;Asset;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Long term-loans granted to GWMC
8071200;8071202;Y;Asset;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Bank deposits
8071200;8071203;Y;Asset;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Interest receivable
8071200;8071204;Y;Asset;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Other investment
8071200;8071205;Y;Asset;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Other loans granted
8071000;8071001;Y;Asset;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Trade and other receivables
8071000;8071002;Y;Asset;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Cash and cash equivalents
8070000;8072000;Y;Liability;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Total financial instruments at fair value, liabilities
8072000;8072100;Y;Liability;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Financial instruments at fair value through profit or loss
8072100;8072101;Y;Liability;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Bank loans and bonds at fair value
8072100;8072110;Y;Liability;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Derivatives not designated as hedges
8072110;8072111;Y;Liability;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Derivatives of non-controlling interest
8072110;8072112;Y;Liability;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Foreign exchange contracts
8072100;8072120;Y;Liability;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Derivatives designated as hedges
8072120;8072121;Y;Liability;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Foreign exchange contracts
8072120;8072122;Y;Liability;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Cross-currency and interest rate exchange contracts
8072120;8072123;Y;Liability;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Interest rate exchange contracts
8000000;8080000;Y;Asset;Y;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Fair value hierarchy
8080000;8081000;Y;Asset;Y;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Total financial assets
8081000;8081100;Y;Asset;Y;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Total financial instruments at fair value, assets
8081100;8081110;Y;Asset;Y;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial instruments at fair value through profit or loss
8081110;8081210;Y;Asset;Y;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Derivatives not designated as hedges
8081210;8081211;Y;Asset;N;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Cross-currency and interest rate exchange contracts
8081210;8081212;Y;Asset;N;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Foreign exchange contracts
8081210;8081213;Y;Asset;N;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Embedded derivatives on senior secured notes
8081210;8081214;Y;Asset;N;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Derivatives over non-controlling interest
8081100;8081120;Y;Asset;Y;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial instruments at fair value
8081120;8081230;Y;Asset;Y;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Derivatives designated as fair value hedges
8081230;8081231;Y;Asset;N;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Interest rate exchange contracts
8081120;8081240;Y;Asset;Y;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Derivatives designated as cashflow hedges
8081240;8081241;Y;Asset;N;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Cross-currency and interest rate exchange contracts
8080000;8082000;Y;Liability;N;N;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Total financial liabilities
8082000;8082100;Y;Liability;N;N;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Total financial instruments at fair values, liabilities
8082100;8082110;Y;Liability;N;N;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Financial instruments at fair value through profit or loss
8082110;8082120;Y;Liability;N;N;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Derivatives not designated as hedges
8082120;8082121;Y;Liability;N;N;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Derivatives over non-controlling interest
8082120;8082122;Y;Liability;N;N;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Foreign exchange contracts
8082110;8082130;Y;Liability;N;N;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Derivatives designated as hedges
8082130;8082131;Y;Liability;N;N;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Foreign exchange contracts
8082130;8082132;Y;Liability;N;N;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Cross-currency and interest rate exchange contracts
8082130;8082133;Y;Liability;N;N;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Interest rate exchange contracts
8000000;8090000;Y;Asset;Y;Y;;;;;;MOV_FI_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Fair value hierarchy
8090000;8091000;Y;Asset;Y;Y;;;;;;MOV_FI_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial instruments at fair value through profit or loss
8091000;8091100;Y;Asset;N;N;;;;;;MOV_FI_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Total financial instruments at fair value, assets
8091100;8091101;Y;Asset;N;N;;;;;;MOV_FI_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Derivatives not designated as hedges
8091100;8091102;Y;Asset;N;N;;;;;;MOV_FI_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Embedded derivatives on senior secured notes
8091100;8091103;Y;Asset;N;N;;;;;;MOV_FI_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Derivatives of non-controlling interest
8091000;8091200;Y;Liability;Y;Y;;;;;;MOV_FI_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Total financial instruments at fair value, liabilities
8091200;8091201;Y;Liability;N;Y;;;;;;MOV_FI_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Derivatives of non-controlling interest
8000000;8100000;Y;GroupLabel;Y;Y;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Loans and bonds details
8100000;8100001;Y;Balance;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Contact Name and Date
8100000;8100002;Y;Liability;N;Y;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Current
8100000;8100003;Y;Liability;N;Y;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Non-current
8100000;8100004;Y;Liability;N;Y;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Curr and Not Curr Total
8100000;8100005;Y;Balance;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Currency
8100000;8100006;Y;Asset;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Initial Loan
8100000;8100007;Y;Balance;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Tranche Name
8100000;8100008;Y;Asset;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Initial Tranche
8100000;8100009;Y;Asset;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Utilized Amount
8100000;8100010;Y;Asset;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Maturity
8100000;8100011;Y;Balance;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Fixed Rate
8100000;8100012;Y;Balance;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Typology (EURIBOR - LIBOR)
8100000;8100013;Y;Balance;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Floating Rate - Benchmark Rate
8100000;8100014;Y;Balance;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Floating Rate - Spread
8100000;8100015;Y;Asset;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Securities
8100000;8100016;Y;Asset;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Nominal Amount
8100000;8100017;Y;Asset;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Hedge Accounting
8100000;8100018;Y;Balance;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Hedge Description
8100000;8100019;Y;Balance;N;N;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Interest Rate after Hedging
8000000;8110000;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Stock option plans
8110000;8111000;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Stock options movements during the year
8111000;8111001;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Options outstanding, beginning of year
8111000;8111002;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of options outstanding, USD per option
8111000;8111003;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average grand-date fair value at the beg. of the year, USD per option
8111000;8111004;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options granted
8111000;8111005;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of options granted
8111000;8111006;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average grant-date fair value opt. granted durint the year,USD per opt.
8111000;8111007;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options exercised
8111000;8111008;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options forfeited/modified/converted to SARs
8111000;8111009;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of options forfeited, USD per option
8111000;8111010;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options outstanding, end of year
8111000;8111011;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of options outstanding, USD per optin
8111000;8111012;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average grant-date fair value at the end of the year, USD per option
8111000;8111013;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Out of the opt.Outs.at the end of the year the number of opt.fully vested/exerc.
8111000;8111014;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted average remaining contractual life of the options outstanding, in years
8110000;8112000;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Valuations
8112000;8112001;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Expected volatility
8112000;8112002;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The weighted-average expected term (in years)
8112000;8112003;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Expected dividend yield
8112000;8112004;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Risk free interest rate
8112000;8112005;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Forteiture rate
8110000;8113000;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;SAR movements during the year
8113000;8113001;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;SARs outstanding, beginning of year
8113000;8113002;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-averag exercise price SARs outstanding, USD per SAR
8113000;8113003;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average grant-date fair value at the beginning of the year, USD per SAR
8113000;8113004;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of SARs granted
8113000;8113005;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of SARs forfeited/modified/converted to SARs
8113000;8113006;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of SARs forfeited, USD per SAR
8113000;8113007;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of SARs outstanding, end of year
8113000;8113008;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of SARs outstanding, USD per SAR
8113000;8113009;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average grant-date fair value at the end of the year, USD per SAR
8113000;8113010;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Out of SARs outs. at the end of the year the number of SARs fully vested/exerc.
8113000;8113011;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted average remaining contractual life of the SARs outstanding, in years
8110000;8114000;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Movements during the year for the directors investment plan
8114000;8114001;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options granted
8114000;8114002;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of options granted, USD per option
8114000;8114003;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average grand-date fair value at the beginning of the year, USD per opt
8114000;8114004;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options exercised
8114000;8114005;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options forfeited/modified
8114000;8114006;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of options forfeited, USD per option
8114000;8114007;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options outstanding, end of year
8114000;8114008;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of options outstanding, USD per option
8114000;8114009;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average grant-date fair value at the end of the year, USD per option
8114000;8114010;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Out of the opt./SAR outs.at end of the year the num of opt./SAR fully vest/exerc
8114000;8114011;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted average remaining contractual life of the options outstanding, in years
8110000;8115000;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Movements during the year for the executive investment plan
8115000;8115001;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options granted or converted from ESOP
8115000;8115002;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of options granted, USD per option
8115000;8115003;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average grant-date FV of opt.granted dur. the year, USD per opt.
8115000;8115004;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options exercised
8115000;8115005;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options forfeited/modified
8115000;8115006;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of options forfeited, USD per option
8115000;8115007;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;The number of options outstanding, end of year
8115000;8115008;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average exercise price of options outstanding, USD per option
8115000;8115009;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted-average grant-date fair value at the end of the year, USD per option
8115000;8115010;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Out of the opt.outs.at end of the year the number of opt.fully vested/exerc
8115000;8115011;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Weighted average remaining contractual life of the options outstanding, in years
8000000;8120000;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Commitments
8120000;8121000;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Total capital commitment
8121000;8121001;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Intangible assets
8121000;8121002;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Repairs and maintenance
8121000;8121003;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Financial assets
8121000;8121100;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Tangible assets
8121100;8121101;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Land and buildings
8121100;8121102;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Plant and machinery
8121100;8121103;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Commercial and industrial equipment
8121100;8121104;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Other tangible assets
8120000;8122000;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Commitments transactions
8122000;8122001;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Volume of transaction
8122000;8122002;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;To guarantee
8122000;8122003;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Investment in Progress
8122000;8122004;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Nature of transaction
8000000;8130000;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Contingencies
8130000;8130001;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Amount requested by opponent
8130000;8130002;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Amount due in case of negative response
8130000;8130003;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Provision recorded at closing date
8130000;8130004;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Comment on contingencies
8000000;8140000;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Operating lease commitments
8140000;8140001;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Operating lease commitments
8000000;8150000;Y;GroupLabel;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Expiry of deposits and financial receivables
8150000;8150001;Y;Balance;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Deposits expiry
8150000;8150002;Y;Balance;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Financial receivable expiry
8000000;8160000;Y;GroupLabel;N;N;;;;;;EMP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Personnel costs - breakdown number of employees
8160000;8160001;Y;Balance;N;N;;;;;;EMP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Average number of employees
8160000;8160002;Y;Balance;N;N;;;;;;EMP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Units
8000000;8170000;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Tangible assets secured for bank borrowing
8170000;8170001;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Land and buildings
8170000;8170002;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Plant and machinery
8170000;8170003;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Commercial and industrial equipment
8170000;8170004;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Other tangible assets
8000000;8180000;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Financial receivables by ageing
8180000;8180001;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Security deposits
8000000;8190000;Y;GroupLabel;Y;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial assets measured at cost
8190000;8190001;Y;Balance;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Company name
8190000;8190002;Y;Balance;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;% of Ownership
8190000;8190003;Y;Asset;N;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Amount (cost)
8000000;8200000;Y;GroupLabel;Y;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial assets available for sale
8200000;8200001;Y;Balance;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Company Name
8200000;8200002;Y;Balance;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;% of Ownership
8200000;8200003;Y;Asset;N;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Amount (fair value)
8200000;8200004;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Amount (amortized cost)
8000000;8210000;Y;GroupLabel;Y;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial assets fair value through profit or loss
8210000;8210001;Y;Balance;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Company Name
8210000;8210002;Y;Balance;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;% of Ownership
8210000;8210003;Y;Asset;N;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Amount (Fair value)
8000000;8220000;Y;Liability;Y;Y;;;CR_TOT;;;IRR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Internal rate of return
8220000;8220001;Y;Liability;N;Y;;;CR_TOT;;;IRR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Interest bearing (debt instrument)
8220000;8220002;Y;Liability;N;Y;;;CR_TOT;;;IRR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;No interest bearing (equity instrument)
8000000;8230000;Y;Asset;N;N;;;;;;FV_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Long term deposits
8230000;8230001;Y;Asset;N;N;;;;;;FV_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Long term deposits with a pre-determined use
8230000;8230002;Y;Asset;N;N;;;;;;FV_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Long term deposits without a pre-determined use
8000000;8240000;Y;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Further aging details long term deposits
8240000;8240001;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Cash At Banks
8240000;8240002;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Time Deposits
8240000;8240003;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Letter of Guarantee
8240000;8240004;Y;Asset;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Sinking found - Pledged
8240000;8241000;Y;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial assets available for sale
8241000;8241001;Y;Asset;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Transaction total
8240000;8242000;Y;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial assets held to maturity
8242000;8242001;Y;Asset;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Transaction total
8000000;8250000;Y;GroupLabel;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;License list
8250000;8250001;Y;Balance;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Single License
8250000;8250002;Y;Balance;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Grand Date
8250000;8250003;Y;Balance;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;End Date
8000000;8260000;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Subscribers
8260000;8260001;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Number of subscribers
8000000;8270000;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Average revenue per user VimpelCom
8270000;8270001;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Average revenue per user VimpelCom
8000000;8280000;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Average revenue per user Other Functions
8280000;8280001;Y;Asset;N;N;;;CR_TOT;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Average revenue per user Other Functions
8000000;8290000;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Mobile minutes of use
8290000;8290001;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Mobile minutes of use
8000000;8300000;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Churn rates
8300000;8300001;Y;Balance;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Churn rates
8000000;8310000;Y;GroupLabel;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;CGU
8310000;8310001;Y;Asset;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Goodwill acquired through business combinations
8310000;8310002;Y;Balance;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Discount rate (functional currency)
8310000;8310003;Y;Balance;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Average revenue growth rate during forecasted period
8310000;8310004;Y;Balance;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Terminal growth rate
8310000;8310005;Y;Balance;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Average operating margin
8310000;8310006;Y;Asset;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Headroom
8310000;8310007;Y;Balance;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Increase of WAAC by
8310000;8310008;Y;Balance;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Drecrease in Average Revenue Growth by
8000000;8320000;Y;Asset;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Reconciliation adjustment
8320000;8320001;Y;Asset;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Reconciliation adjustment
8000000;8330000;Y;GroupLabel;N;Y;;;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Number of shares
8330000;8330001;Y;Balance;N;Y;;;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Number of shares
8000000;8340000;Y;GroupLabel;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Capitalized borrowing costs
8340000;8340001;Y;Asset;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Property and equipment
8340000;8340002;Y;Balance;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Interest rate property and equipment applicable from
8340000;8340003;Y;Balance;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Interest rate property and equipment applicable to
8340000;8340004;Y;Asset;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Intangible assets
8340000;8340005;Y;Balance;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Interest rate intangible assets applicable from
8340000;8340006;Y;Balance;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Interest rate intangible assets applicable to
8000000;8350000;Y;Asset;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Cash consideration
8350000;8350001;Y;Asset;N;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Cash consideration
8000000;8400000;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Contractual obligations
8400000;8400001;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Bank loans and bonds
8400000;8400002;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Equipment financing
8400000;8400003;Y;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Loans from others
8400000;8400004;Y;Liability;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Capital lease obligations
8400000;8400005;Y;Liability;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Non-cancellable lease obligations
8400000;8400006;Y;Liability;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Purchase obligations
8400000;8400007;Y;Liability;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Other long-term liabilities
8000000;8500000;Y;GroupLabel;N;N;;;;;;COMP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Competitors
8500000;8500001;Y;Balance;N;N;;;;;;COMP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Number of subscribers
8000000;8600000;Y;GroupLabel;N;N;;;;;;MKT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Market share
8600000;8600001;Y;Balance;N;N;;;;;;MKT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Market share
8000000;8700000;Y;GroupLabel;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Subsequent events
8700000;8700001;Y;Balance;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Comment on subsequent events
#root;DISCHECK;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Disclosure checks
DISCHECK;DISCHECK_01;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrowings by interest and currency - Bonds
DISCHECK_01;DISCHECK_01_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrowings by interest and currency - Bonds GCoA
DISCHECK_01_TOT;2210200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - NCL
DISCHECK_01_TOT;2340300;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - CL
DISCHECK_01;DISCHECK_01_DET;Y;Liability;Y;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrowings by interest and currency - Bonds Disclosures
DISCHECK_01_DET;8020001;N;Liability;N;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Bonds
DISCHECK_01;DISCHECK_01_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrowings by interest and currency - Bonds Check
DISCHECK;DISCHECK_02;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrowings by interest and currency - Liabilities to Banks
DISCHECK_02;DISCHECK_02_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrowings by interest and currency - Liabilities to Banks GCoA
DISCHECK_02_TOT;2210100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - NCL
DISCHECK_02_TOT;2340100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - CL
DISCHECK_02_TOT;2340200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank overdraft - CL
DISCHECK_02;DISCHECK_02_DET;Y;Liability;Y;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrowings by interest and currency - Liabil. to Banks Disclosures
DISCHECK_02_DET;8020002;N;Liability;N;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Liabilities to bank
DISCHECK_02;DISCHECK_02_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrowings by interest and currency - Liabil. to Banks Disclosures
DISCHECK;DISCHECK_03;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrow. by interest and currency - Other Int.Bearing Liabil.. GCoA
DISCHECK_03;DISCHECK_03_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrow. by interest and currency - Other Int.Bearing Liabil.. GCoA
DISCHECK_03_TOT;2210300;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Payables within VimpelCom – NCL
DISCHECK_03_TOT;2210400;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Promissory notes payables - NCL
DISCHECK_03_TOT;2210500;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - NCL
DISCHECK_03_TOT;2210600;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - NCL
DISCHECK_03_TOT;2340400;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Payables within VimpelCom – CA
DISCHECK_03_TOT;2340500;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Promissory notes payables - CL
DISCHECK_03;DISCHECK_03_DET;Y;Liability;Y;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrow. by interest and currency - Other Int.Bearing Liabil. Discl.
DISCHECK_03_DET;8021000;N;Liability;Y;Y;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Other interest - bearing liabilities
DISCHECK_03_DET;8020004;N;Liability;N;N;;;CR_TOT;;;IR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Other non-interest bearing liabilities
DISCHECK_03;DISCHECK_03_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Borrow. by interest and currency - Other Int.Bearing Liabil. Check
DISCHECK;DISCHECK_04;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Commitments - Internal Disclosures Parity
DISCHECK_04;DISCHECK_04_TOT;Y;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Commitments - Total Commitments
DISCHECK_04_TOT;8121000;N;Asset;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Total capital commitment
DISCHECK_04;DISCHECK_04_DET;Y;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Commitments - Transactions
DISCHECK_04_DET;8122000;N;Asset;N;N;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Commitments transactions
DISCHECK_04;DISCHECK_04_CK;N;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Commitments - Internal Parity Check
DISCHECK;DISCHECK_05;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Bank Loans and Bonds
DISCHECK_05;DISCHECK_05_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Bank Loans and Bonds GCoA
DISCHECK_05_TOT;2210100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - NCL
DISCHECK_05_TOT;2340100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - CL
DISCHECK_05_TOT;2210200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - NCL
DISCHECK_05_TOT;2340300;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - CL
DISCHECK_05;DISCHECK_05_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Bank Loans and Bonds Disclosures
DISCHECK_05_DET;8400001;N;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Bank loans and bonds
DISCHECK_05;DISCHECK_05_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Bank Loans and Bonds Check
DISCHECK;DISCHECK_06;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Equipment Financing
DISCHECK_06;DISCHECK_06_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Equipment Financing GCoA
DISCHECK_06_TOT;2210500;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - NCL
DISCHECK_06_TOT;2340600;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - CL
DISCHECK_06;DISCHECK_06_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Equipment Financing Disclosures
DISCHECK_06_DET;8400002;N;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Equipment financing
DISCHECK_06;DISCHECK_06_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Equipment Financing Check
DISCHECK;DISCHECK_07;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Loans from others
DISCHECK_07;DISCHECK_07_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Loans from others GCoA
DISCHECK_07_TOT;2210600;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - NCL
DISCHECK_07_TOT;2340700;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - CL
DISCHECK_07;DISCHECK_07_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Loans from others Disclosures
DISCHECK_07_DET;8400003;N;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Loans from others
DISCHECK_07;DISCHECK_07_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Loans from others Check
DISCHECK;DISCHECK_08;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Loans from others
DISCHECK_08;DISCHECK_08_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Loans from others GCoA
DISCHECK_08_TOT;2230000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other non-financial liabilities - NCL
DISCHECK_08_TOT;2330000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Other non-financial liabilities - CL
DISCHECK_08;DISCHECK_08_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Loans from others Disclosures
DISCHECK_08_DET;8400007;N;Liability;N;N;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Other long-term liabilities
DISCHECK_08;DISCHECK_08_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Contractual Obligations - Loans from others Check
DISCHECK;DISCHECK_09;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Deposits Expiry
DISCHECK_09;DISCHECK_09_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Deposits Expiry GCoA
DISCHECK_09_TOT;1250100;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans granted to associates - CA
DISCHECK_09;DISCHECK_09_DET;Y;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Deposits Expiry Disclosures
DISCHECK_09_DET;8150001;N;Balance;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Deposits expiry
DISCHECK_09;DISCHECK_09_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Deposits Expiry Check
DISCHECK;DISCHECK_10;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financial Receivables Expiry
DISCHECK_10;DISCHECK_10_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financial Receivables Expiry GCoA
DISCHECK_10_TOT;1250300;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - CA
DISCHECK_10_TOT;1250200;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans granted to JCE - CA
DISCHECK_10_TOT;1250400;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receivables within VimpelCom – CA
DISCHECK_10_TOT;1250800;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receivables from investments purchase / sale- CA
DISCHECK_10;DISCHECK_10_DET;Y;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financial Receivables Expiry Disclosures
DISCHECK_10_DET;8150002;N;Balance;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Financial receivable expiry
DISCHECK_10;DISCHECK_10_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financial Receivables Expiry Check
DISCHECK;DISCHECK_11;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Financial Instruments
DISCHECK_11;DISCHECK_11_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Financial Instruments GCoA
DISCHECK_11_TOT;1250900;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - CA
DISCHECK_11_TOT;1170900;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - NCA
DISCHECK_11;DISCHECK_11_DET;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Financial Instruments Disclosures
DISCHECK_11_DET;8071100;N;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Total financial instruments at fair value, assets
DISCHECK_11;DISCHECK_11_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Financial Instruments Check
DISCHECK;DISCHECK_12;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Loans granted, deposits and fin.assets
DISCHECK_12;DISCHECK_12_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Loans granted, deposits and fin.assets GCoA
DISCHECK_12_TOT;1170100;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans granted to associates - NCA
DISCHECK_12_TOT;1170200;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans granted to JCE - NCA
DISCHECK_12_TOT;1170300;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - NCA
DISCHECK_12_TOT;1170400;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receivables within VimpelCom – NCA
DISCHECK_12_TOT;1170500;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets at FVTPL - NCA
DISCHECK_12_TOT;1170600;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets available for sale - NCA
DISCHECK_12_TOT;1170700;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets held to maturity - NCA
DISCHECK_12_TOT;1170800;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receivables from investments purchase / sale- NCA
DISCHECK_12_TOT;1250100;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans granted to associates - CA
DISCHECK_12_TOT;1250200;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans granted to JCE - CA
DISCHECK_12_TOT;1250300;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank deposits - CA
DISCHECK_12_TOT;1250400;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receivables within VimpelCom – CA
DISCHECK_12_TOT;1250500;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets at FVTPL - CA
DISCHECK_12_TOT;1250600;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets available for sale - CA
DISCHECK_12_TOT;1250700;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets held to maturity - CA
DISCHECK_12_TOT;1250800;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Receivables from investments purchase / sale- CA
DISCHECK_12;DISCHECK_12_DET;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Loans granted, deposits and fin.assets Disclosures
DISCHECK_12_DET;8071200;N;Asset;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Total loans granted, deposits and other financial assets
DISCHECK_12;DISCHECK_12_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Loans granted, deposits and fin.assets Check
DISCHECK;DISCHECK_13;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Trade and other receivables
DISCHECK_13;DISCHECK_13_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Trade and other receivables GCoA
DISCHECK_13_TOT;1220000;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Trade and other receivables
DISCHECK_13;DISCHECK_13_DET;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Trade and other receivables Disclosures
DISCHECK_13_DET;8071001;N;Asset;N;N;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Trade and other receivables
DISCHECK_13;DISCHECK_13_CK;N;Asset;Y;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Trade and other receivables Check
DISCHECK;DISCHECK_14;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Cash and cash equivalents
DISCHECK_14;DISCHECK_14_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Cash and cash equivalents GCoA
DISCHECK_14_TOT;1260000;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Cash and cash equivalents
DISCHECK_14;DISCHECK_14_DET;Y;Asset;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Cash and cash equivalents Disclosures
DISCHECK_14_DET;8071002;N;Asset;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Cash and cash equivalents
DISCHECK_14;DISCHECK_14_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Cash and cash equivalents Check
DISCHECK;DISCHECK_15;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Total financ. Instrum. at fair values, liabil.
DISCHECK_15;DISCHECK_15_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Total financ. Instrum. at fair values, liabil. GCoA
DISCHECK_15_TOT;2210700;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - NCL
DISCHECK_15_TOT;2340800;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - CL
DISCHECK_15;DISCHECK_15_DET;Y;Liability;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Total financ. Instrum. at fair values, liabil. Discl.
DISCHECK_15_DET;8071003;Y;Liability;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Derivatives
DISCHECK_15;DISCHECK_15_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Total financ. Instrum. at fair values, liabil. Check
DISCHECK;DISCHECK_16;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Total Other financial liabil. at amortized cost
DISCHECK_16;DISCHECK_16_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Total Other financial liabil. at amortized cost GCoA
DISCHECK_16_TOT;2210100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - NCL
DISCHECK_16_TOT;2210200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - NCL
DISCHECK_16_TOT;2210300;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Payables within VimpelCom – NCL
DISCHECK_16_TOT;2210400;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Promissory notes payables - NCL
DISCHECK_16_TOT;2210500;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - NCL
DISCHECK_16_TOT;2210600;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - NCL
DISCHECK_16_TOT;2340100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - CL
DISCHECK_16_TOT;2340200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank overdraft - CL
DISCHECK_16_TOT;2340300;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - CL
DISCHECK_16_TOT;2340400;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Payables within VimpelCom – CA
DISCHECK_16_TOT;2340500;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Promissory notes payables - CL
DISCHECK_16_TOT;2340600;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - CL
DISCHECK_16_TOT;2340700;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - CL
DISCHECK_16;DISCHECK_16_DET;Y;Liability;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Total Other financial liabil. at amortized cost Discl
DISCHECK_16_DET;8071004;Y;Liability;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Other financial liabil. at amortized cost GCoA
DISCHECK_16;DISCHECK_16_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Total Other financial liabil. at amortized cost Check
DISCHECK;DISCHECK_17;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Trade and Other Payables
DISCHECK_17;DISCHECK_17_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Trade and Other Payables GCoA
DISCHECK_17_TOT;2310000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Trade and other payables
DISCHECK_17;DISCHECK_17_DET;Y;Liability;Y;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Trade and Other Payables Disclosures
DISCHECK_17_DET;8071005;Y;Liability;N;Y;;;;;;VT_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Trade and Other Payables Disclosures
DISCHECK_17;DISCHECK_17_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values - Trade and Other Payables Check
DISCHECK;DISCHECK_18;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values Hierarchy - Fin. Instrum. at fair values, assets
DISCHECK_18;DISCHECK_18_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values Hierarchy - Fin. Instrum. at fair values, assets GCoA
DISCHECK_18_TOT;1250900;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - CA
DISCHECK_18_TOT;1170900;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - NCA
DISCHECK_18;DISCHECK_18_DET;Y;Asset;Y;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values Hierarchy - Fin. Instrum. at fair values, assets Discl.
DISCHECK_18_DET;8081100;N;Asset;Y;Y;;;;;;INP_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Total financial instruments at fair value, assets
DISCHECK_18;DISCHECK_18_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values Hierarchy - Fin. Instrum. at fair values, assets Check
DISCHECK;DISCHECK_19;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values Hierarchy - Fin. Instrum. at fair value, liabilities
DISCHECK_19;DISCHECK_19_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values Hierarchy - Fin. Instrum. at fair value, liabilities GCoA
DISCHECK_19_TOT;2210700;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - NCL
DISCHECK_19_TOT;2340800;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Derivatives - CL
DISCHECK_19;DISCHECK_19_DET;Y;Liability;Y;Y;;;;;;MOV_FI_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values Hierarchy - Fin. Instrum. at fair value, liabilities Discl
DISCHECK_19_DET;8091200;N;Liability;Y;Y;;;;;;MOV_FI_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Total financial instruments at fair value, liabilities
DISCHECK_19;DISCHECK_19_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Fair Values Hierarchy - Fin. Instrum. at fair value, liabilities Check
DISCHECK;DISCHECK_20;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets av sale - Amount (Fair value)
DISCHECK_20;DISCHECK_20_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets av sale - Amount (Fair value) GCoA
DISCHECK_20_TOT;1170600;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets available for sale - NCA
DISCHECK_20_TOT;1250600;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets available for sale - CA
DISCHECK_20;DISCHECK_20_DET;Y;Asset;Y;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets av sale - Amount (Fair value) Disclosures
DISCHECK_20_DET;8200003;N;Asset;N;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Amount (fair value)
DISCHECK_20;DISCHECK_20_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets av sale - Amount (Fair value) Check
DISCHECK;DISCHECK_21;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets FVTP&L - Amount (Fair value)
DISCHECK_21;DISCHECK_21_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets FVTP&L - Amount (Fair value) GCoA
DISCHECK_21_TOT;1170500;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets at FVTPL - NCA
DISCHECK_21_TOT;1250500;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets at FVTPL - CA
DISCHECK_21;DISCHECK_21_DET;Y;Asset;Y;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets FVTP&L - Amount (Fair value) Disclosures
DISCHECK_21_DET;8210003;N;Asset;N;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Amount (Fair value)
DISCHECK_21;DISCHECK_21_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets FVTP&L -Amount (Fair value) Check
DISCHECK;DISCHECK_22;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets meas cost - Amount (cost)
DISCHECK_22;DISCHECK_22_TOT;Y;Asset;Y;Y;;VIP_TOT;;;TF_Inv_1;;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets meas cost - Amount (cost) GCoA
DISCHECK_22_TOT;1140101;N;Asset;N;Y;6300401;VIP_TOT;;OVERRIDE;TF_Inv_1;RP000;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;INVESTMENT;PINT_INV;Investments in subsidiaries
DISCHECK_22;DISCHECK_22_DET;Y;Asset;Y;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets meas cost - Amount (cost) Disclosures
DISCHECK_22_DET;8190003;N;Asset;N;Y;;;;;;TR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Amount (cost)
DISCHECK_22;DISCHECK_22_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Financ Assets meas cost - Amount (cost) Check
DISCHECK;DISCHECK_23;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Transaction total
DISCHECK_23;DISCHECK_23_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Transaction total GCoA
DISCHECK_23_TOT;1250600;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets available for sale - CA
DISCHECK_23;DISCHECK_23_DET;Y;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Transaction total Disclosures
DISCHECK_23_DET;8241001;N;Asset;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Transaction total
DISCHECK_23;DISCHECK_23_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Transaction total Check
DISCHECK;DISCHECK_24;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Fin. assets available for sale
DISCHECK_24;DISCHECK_24_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Fin. assets available for sale GCoA
DISCHECK_24_TOT;1250600;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets available for sale - CA
DISCHECK_24_TOT;1170600;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets available for sale - NCA
DISCHECK_24;DISCHECK_24_DET;Y;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Fin. assets available for sale Discl.
DISCHECK_24_DET;8241000;N;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial assets available for sale
DISCHECK_24;DISCHECK_24_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Fin. assets available for sale Check
DISCHECK;DISCHECK_25;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK -Further ageing det - LT Dep - Transaction total
DISCHECK_25;DISCHECK_25_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Transaction total GCoA
DISCHECK_25_TOT;1250700;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets held to maturity - CA
DISCHECK_25;DISCHECK_25_DET;Y;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Transaction total Disclosures
DISCHECK_25_DET;8242001;N;Asset;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Transaction total
DISCHECK_25;DISCHECK_25_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Transaction total Check
DISCHECK;DISCHECK_26;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Fin. assets held to maturity
DISCHECK_26;DISCHECK_26_TOT;Y;Asset;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Fin. assets held to maturity GCoA
DISCHECK_26_TOT;1250700;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets held to maturity - CA
DISCHECK_26_TOT;1170700;N;Asset;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial assets held to maturity - NCA
DISCHECK_26;DISCHECK_26_DET;Y;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Fin. assets held to maturity Disclosures
DISCHECK_26_DET;8242000;N;Asset;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Financial assets held to maturity
DISCHECK_26;DISCHECK_26_CK;N;Asset;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Further ageing det - LT Dep - Fin. assets held to maturity Check
DISCHECK;DISCHECK_27;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Internal Rate of return - Internal rate of return
DISCHECK_27;DISCHECK_27_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Internal Rate of return - Internal rate of return GCoA
DISCHECK_27_TOT;2210000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial liabilities - NCL
DISCHECK_27_TOT;2210105;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - discounts, unamortized fees - NCL
DISCHECK_27_TOT;2210205;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - discounts, unamortized fees - NCL
DISCHECK_27_TOT;2210503;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - discounts, unamortized fees - NCL
DISCHECK_27_TOT;2210603;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others - unamortized fees - NCL
DISCHECK_27_TOT;2340000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Financial liabilities - CL
DISCHECK_27_TOT;2340107;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bank loans - discounts, unamortized fees - CL
DISCHECK_27_TOT;2340305;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Bonds - discounts, unamortized fees - CL
DISCHECK_27_TOT;2340603;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Equipment financing - discounts, unamortized fees - CL
DISCHECK_27_TOT;2340703;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Loans from others - discounts, unamortized fees - CL
DISCHECK_27;DISCHECK_27_DET;Y;Liability;Y;Y;;;CR_TOT;;;IRR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Internal Rate of return - Internal rate of return Disclosures
DISCHECK_27_DET;8220000;N;Liability;Y;Y;;;CR_TOT;;;IRR_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Internal rate of return
DISCHECK_27;DISCHECK_27_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Internal Rate of return - Internal rate of return Check
DISCHECK;DISCHECK_28;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Bank loans and bonds
DISCHECK_28;DISCHECK_28_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Bank loans and bonds GCoA
DISCHECK_28_TOT;2210100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - NCL
DISCHECK_28_TOT;2340100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - CL
DISCHECK_28;DISCHECK_28_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Bank loans and bonds Disclosures
DISCHECK_28_DET;8060001;N;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Bank loans and bonds
DISCHECK_28;DISCHECK_28_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Bank loans and bonds Check
DISCHECK;DISCHECK_29;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Bonds
DISCHECK_29;DISCHECK_29_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK
DISCHECK_29_TOT;2210200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - NCL
DISCHECK_29_TOT;2340300;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - CL
DISCHECK_29;DISCHECK_29_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Bonds Disclosures
DISCHECK_29_DET;8060002;N;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Bonds
DISCHECK_29;DISCHECK_29_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Bonds Check
DISCHECK;DISCHECK_30;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Equipment financing
DISCHECK_30;DISCHECK_30_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Equipment financing GCoA
DISCHECK_30_TOT;2210500;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - NCL
DISCHECK_30_TOT;2340600;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Equipment financing - CL
DISCHECK_30;DISCHECK_30_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Equipment financing Disclosures
DISCHECK_30_DET;8060004;N;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Equipment financing
DISCHECK_30;DISCHECK_30_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Equipment financing Check
DISCHECK;DISCHECK_31;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Loans from others
DISCHECK_31;DISCHECK_31_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Loans from others GCoA
DISCHECK_31_TOT;2210600;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - NCL
DISCHECK_31_TOT;2340700;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Loans from others - CL
DISCHECK_31;DISCHECK_31_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Loans from others Disclosures
DISCHECK_31_DET;8060005;N;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Loans from others
DISCHECK_31;DISCHECK_31_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Loans from others Check
DISCHECK;DISCHECK_32;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Derivatives over non-controlling interest
DISCHECK_32;DISCHECK_32_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Derivatives over non-controlling interest  GCoA
DISCHECK_32_TOT;2210704;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Derivatives over non-controlling interest - NCL derivatives
DISCHECK_32_TOT;2340804;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Derivatives over non-controlling interest - CL derivatives
DISCHECK_32;DISCHECK_32_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Derivatives over non-controlling interest  Discl.
DISCHECK_32_DET;8060006;N;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Derivatives over non-controlling interest
DISCHECK_32;DISCHECK_32_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Derivatives over non-controlling interest  Check
DISCHECK;DISCHECK_33;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Derivative financial instruments
DISCHECK_33;DISCHECK_33_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Derivative financial instruments  GCoA
DISCHECK_33_TOT;2210701;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cross-currency interest rate exchange contracts - NCL derivatives
DISCHECK_33_TOT;2210702;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Foreign exchange contracts - NCL derivatives
DISCHECK_33_TOT;2210703;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest rate exchange contracts - NCL derivatives
DISCHECK_33_TOT;2210705;N;Liability;N;Y;LT_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest accrued - NCL derivatives
DISCHECK_33_TOT;2340801;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Cross-currency interest rate exchange contracts - CL derivatives
DISCHECK_33_TOT;2340802;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Foreign exchange contracts - CL derivatives
DISCHECK_33_TOT;2340803;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;FIN_TOT;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest rate exchange contracts - CL derivatives
DISCHECK_33_TOT;2340805;N;Liability;N;Y;ST_PLUG;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;1;;;ELIM_ELI;Interest accrued - CL derivatives
DISCHECK_33;DISCHECK_33_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Derivative financial instruments  Disclosures
DISCHECK_33_DET;8061000;N;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Derivative financial instruments
DISCHECK_33;DISCHECK_33_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Derivative financial instruments  Check
DISCHECK;DISCHECK_34;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Telecommunication licence payable
DISCHECK_34;DISCHECK_34_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Telecommunication licence payable GCoA
DISCHECK_34_TOT;2230303;N;Liability;N;Y;;VIP_TOT;;OVERRIDE;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_FINANCIAL;Y;;1;;;;Payables for licenses to GA - non-financial liabilities - NCL
DISCHECK_34;DISCHECK_34_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Telecommunication licence payable Disclosures
DISCHECK_34_DET;8060007;N;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Telecommunication lincense payable
DISCHECK_34;DISCHECK_34_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Telecommunication licence payable  Check
DISCHECK;DISCHECK_35;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Trade and other pay and dividend pay
DISCHECK_35;DISCHECK_35_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Trade and other pay and dividend pay GCoA
DISCHECK_35_TOT;2310100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Trade payables
DISCHECK_35_TOT;2310400;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Other payables
DISCHECK_35_TOT;2320000;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Dividends payable to the owners and NCI
DISCHECK_35;DISCHECK_35_DET;Y;Liability;Y;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Trade and other pay and dividend pay  Disclosures
DISCHECK_35_DET;8060008;N;Liability;N;Y;;;;;;AG_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Trade and other payables and dividend payments
DISCHECK_35;DISCHECK_35_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Liquidity Risk - Trade and other pay and dividend pay  Check
DISCHECK;DISCHECK_36;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Current
DISCHECK_36;DISCHECK_36_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK -Loans & Bonds - Current GCoA
DISCHECK_36_TOT;2340100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - CL
DISCHECK_36_TOT;2340200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank overdraft - CL
DISCHECK_36_TOT;2340300;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - CL
DISCHECK_36;DISCHECK_36_DET;Y;Liability;Y;Y;;;CR_TOT;;;LD_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Current  Disclosures
DISCHECK_36_DET;8100002;N;Liability;N;Y;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Current
DISCHECK_36;DISCHECK_36_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Current  Check
DISCHECK;DISCHECK_37;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Non-current
DISCHECK_37;DISCHECK_37_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Non-current GCoA
DISCHECK_37_TOT;2210100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - NCL
DISCHECK_37_TOT;2210200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - NCL
DISCHECK_37;DISCHECK_37_DET;Y;Liability;Y;Y;;;CR_TOT;;;LD_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK -Loans & Bonds - Non-current  Disclosures
DISCHECK_37_DET;8100003;N;Liability;N;Y;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Non-current
DISCHECK_37;DISCHECK_37_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Non-current  Check
DISCHECK;DISCHECK_38;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Curr and Not Curr Total
DISCHECK_38;DISCHECK_38_TOT;Y;Liability;Y;Y;;VIP_TOT;;;M_TOT;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Curr and Not Curr Total GCoA
DISCHECK_38_TOT;2340100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - CL
DISCHECK_38_TOT;2340200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank overdraft - CL
DISCHECK_38_TOT;2340300;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - CL
DISCHECK_38_TOT;2210100;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bank loans - NCL
DISCHECK_38_TOT;2210200;N;Liability;Y;Y;;VIP_TOT;;;M_TOT;RP000;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;1;;;;Bonds - NCL
DISCHECK_38;DISCHECK_38_DET;Y;Liability;Y;Y;;;CR_TOT;;;LD_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Curr and Not Curr Total  Disclosures
DISCHECK_38_DET;8100004;N;Liability;N;Y;;;;;;LB_TOT;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_FINANCIAL;Y;;3;;;ELIM;Curr and Not Curr Total
DISCHECK_38;DISCHECK_38_CK;N;Liability;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_FINANCIAL;Y;;3;;;;Dis. CK - Loans & Bonds - Curr and Not Curr Total  Check
#root;TECH;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_TECH;Y;;1;;;;Technical Account
TECH;HELP_ACCS;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_ACTIVATEHPL;Y;;1;;;;Technical Help Accounts
HELP_ACCS;ACTIVATE_HPL;Y;Revenue;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_ACTIVATEHPL;Y;;0;;;;Activate HPL Integration
HELP_ACCS;ACTIVATE_FCT66;Y;Revenue;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_ACTIVATEHPL;Y;;1;;;;Activate Opening from FCT66
HELP_ACCS;ACTIVATE_LBE;Y;Revenue;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_ACTIVATEHPL;Y;;1;;;;Activate LBE scenario
HELP_ACCS;ACTIVATE_HST;Y;Revenue;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_ACTIVATEHPL;Y;;0;;;;Activate Historical Data Corrections extract
HELP_ACCS;OPECASHPER;Y;Revenue;Y;N;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_ACTIVATEHPL;Y;;0;;;;Cash at the beginning of the Period – Periodic Tech
HELP_ACCS;OPECASHQTD;Y;Revenue;Y;N;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_ACTIVATEHPL;Y;;0;;;;Cash at the beginning of the Period – QTD Tech 
HELP_ACCS;OPECASHHYTD;Y;Revenue;Y;N;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_ACTIVATEHPL;Y;;0;;;;Cash at the beginning of the Period – HYTD Tech
TECH;GOODWILL;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_TECH;Y;;1;;;;Goodwill
GOODWILL;1130101_I;Y;Asset;N;Y;5300210;VIP_TOT;;;M_TOT;;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_TECH;Y;;1;;;GW_GW;Goodwill
TECH;HIST;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_TECH;Y;;1;;;;Goodwill Historical
HIST;1130101_H;Y;Asset;N;Y;;VIP_TOT;;;TF_Historical;;VD000;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_TECH;Y;;1;;;GWH_GW;Goodwill Hist
HIST;1220401_H;Y;Asset;N;Y;;VIP_TOT;;;TF_Historical;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_TECH;Y;;1;;;PROVH_PRO;Allowance for doubtful accounts - receivables due from customers Hist
HIST;1220402_H;Y;Asset;N;Y;;VIP_TOT;;;TF_Historical;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_TECH;Y;;1;;;PROVH_PRO;Allowance for doubtful accounts - receivables due  for roaming Hist
HIST;1220403_H;Y;Asset;N;Y;;VIP_TOT;;;TF_Historical;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_TECH;Y;;1;;;PROVH_PRO;Allowance for doubtful accounts - receivables due  for interconnect Hist
HIST;1220404_H;Y;Asset;N;Y;;VIP_TOT;;;TF_Historical;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_TECH;Y;;1;;;PROVH_PRO;Allowance for doubtful accounts - rec. due from dealers and distrib.s Hist
HIST;1220405_H;Y;Asset;N;Y;;VIP_TOT;;;TF_Historical;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_TECH;Y;;1;;;PROVH_PRO;Allowance for doubtful accounts - other trade receivables Hist
HIST;1220406_H;Y;Asset;N;Y;;VIP_TOT;;;TF_Historical;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_TECH;Y;;1;;;PROVH_PRO;Allow. for doubtful accounts-accounts rec. from sale of long-lived ass. Hist
TECH;HIST_DISC;Y;GroupLabel;Y;Y;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_TECH;Y;;1;;;;Discontinued Historical
HIST_DISC;1370101_PROV_H;Y;Asset;N;Y;;VIP_TOT;;;TF_Historical;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_TECH;Y;;1;;;PROVH_PRO;Allowance for doubtful accounts - receivables due from customers Disc.H
TECH;THRESHOLDS;Y;GroupLabel;N;N;;;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;Y;N;ACC_TECH;Y;;1;;;;
THRESHOLDS;HARDCHECK_THRESHOLD;Y;Asset;N;N;;VIP_TOT;;;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;R;N;ACC_TECH;Y;;1;;;;Hard validations threshold
#root;TAX;Y;GroupLabel;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;ACC_TAX;Y;;10;;;;TAX Reporting
TAX;T0;Y;GroupLabel;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;ACC_TAX;Y;;10;;;;Tax exchange rates
T0;Opening_YTD;Y;CurrencyRate;Y;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_TAX;N;;10;;;;Opening Rate (YTD)
T0;Average_QTD;Y;CurrencyRate;N;N;;;;;;;;;9;N;N;N;N;N;N;N;;;N;N;ACC_TAX;Y;;10;;;;Average rate (YTD)
TAX;T1;Y;GroupLabel;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;ACC_TAX;Y;;10;;;;Tax rates
T1;TAX_OPE;Y;BalanceRecurring;N;N;;;;TAX_TYPE;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Opening balance tax rate in %
T1;TAX_CY;Y;BalanceRecurring;N;N;;;;TAX_TYPE;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Current year (P/L) tax rate in %
T1;TAX_DEF;Y;BalanceRecurring;N;N;;;;TAX_TYPE;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Deferred (ending balance) tax rate in %
T1;TAX_CY_SC;Y;BalanceRecurring;N;N;;;;TAX_TYPE;;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Current year (P/L) tax rate in % (Sub Cons level only)
TAX;T2;Y;GroupLabel;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;ACC_TAX;Y;;10;;;;Tax carryforwards
T2;T200010;Y;Asset;N;Y;;;;TAX_TYPE;T2;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Rollforward of tax losses
T2;T200020;Y;Asset;N;Y;;;;TAX_TYPE;T2;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Rollforward of other carryforwards
T2;T200030;Y;Asset;N;Y;;;;TAX_TYPE;T2;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Rollforward of tax credits
TAX;T3_T4;Y;Asset;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;ACC_TAX;Y;;10;;;;Temporary differences and defered taxes
T3_T4;T400000;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Net deferred tax
T400000;T300000;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Gross deferred tax assets and liabilities
T300000;T311100;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total Temporary differences and tax attributes
T311100;T310000;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total assets
T310000;T311000;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total non current assets
T311000;T311010;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1110000;;Property, plant and equipment
T311000;T311020;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1120000;;Intangible assets (net of Goodwill)
T311000;T311030;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1130101;;Goodwill
T311000;T311040;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1140101;;Investments in subsidiaries total
T311000;T311050;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1150000;;Investments in associates and JV (non-current)
T311000;T311055;Y;Asset;Y;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;IV_PLUG;;Investments Plug Account
T311000;T311060;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1170000;;Financial assets (non-current)
T311000;T311070;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1180000;;Other non-financial assets (non-current)
T311000;T311075;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1181000;;Income taxes advances (non-current)
T311000;T311080;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1160101;;Deferred tax asset
T310000;T312000;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total current assets
T312000;T312010;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1210000;;Inventories
T312000;T312020;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1220000;;Trade and other receivables
T312000;T312030;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1230000;;Other non-financial Assets (current)
T312000;T312035;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1240000;;Current Income Tax asset
T312000;T312040;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1250000;;Other financial assets (current)
T312000;T312050;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1260000;;Cash and cash equivalents
T310000;T313000;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;1300000;;Assets classified as held for sale
T311100;T320000;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Equity and liabiliites
T320000;T321000;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2100000;;Equity
T320000;T322000;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total liabilities
T322000;T322100;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total non-current liabilities
T322100;T322110;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2210000;;Financial liabilities (non-current)
T322100;T322120;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2220000;;Provisions (non-current)
T322100;T322130;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2230000;;Other non-financial liabilities (non-current)
T322100;T322140;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2240101;;Deferred tax liabilities
T322000;T322200;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total current liabilities
T322200;T322210;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2310000;;Trade and other payables
T322200;T322220;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2330000;;Other non-financial liabilities (current)
T322200;T322230;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2320000;;Dividends payable to the owners and NCI
T322200;T322240;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2340000;;Financial Liabilities (current)
T322200;T322250;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2350000;;Current Income tax payable
T322200;T322260;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2360000;;Provisions (current)
T320000;T323000;Y;Liability;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;2410101;;Liabilities directly associated with the assets classified as held for sale
T311100;T330010;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Adjustments to / Other temporary differences
T311100;T330020;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax losses (from Schedule 2)
T311100;T330030;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other carryforwards (from Schedule 2)
T300000;T410010;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax credits (from Schedule 2)
T300000;T410020;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Withholding tax on undistributed earnings
T300000;T410070;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other deferred tax items
T400000;T410090;Y;Asset;N;Y;;;;TAX_TYPE;T3_4;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Offsetting deferred tax assets and liabilities
TAX;T5;Y;GroupLabel;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;ACC_TAX;Y;;10;;;;Taxable income
T5;T500000;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Taxable result after tax loss
T500000;T500100;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Taxable result before tax loss
T500100;T500110;Y;Liability;Y;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Income before income taxes
T500100;T500120;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Transfer of results within tax groups
T500100;T500130;Y;Liability;N;Y;;;;TAX_TYPE;;;TAX_DIFF;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Permanent differences  taxable(+) / deductible (-)
T500100;T500140;Y;Liability;Y;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Temporary differences - taxable(+) / deductible (-)
T500000;T500051;Y;Liability;Y;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax loss utilization (-) / incurrence (+)
T500000;T500052;Y;Liability;Y;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other carryforward utilization (-) / incurrence (+)
T5;T510000;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total tax expense (+)/ benefit (-)
T510000;T511000;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total current tax expense (+)/ benefit (-)
T511000;T511010;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of tax credits
T511000;T511020;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Adjustment prior years / return to accrual
T511000;T511030;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect from refiling tax returns (Russia Only)
T511000;T511040;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax effect of intragroup dividends
T511040;T511041;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;WHT from dividends accrued in current period
T511040;T511042;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Difference between WHT accrued in prior periods and paid
T511000;T511050;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Withholding tax on undistributed earnings
T511000;T511060;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other withholding taxes (e.g. interest, royalties, fees)
T511000;T511070;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax contingencies
T511000;T511080;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of minimum tax
T511000;T511090;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other
T511000;T511100;Y;Liability;Y;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax payable (+)/ receivable (-) current year
T510000;T512000;Y;Liability;N;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total deferred tax expense (+)/ benefit (-)
T512000;T512010;Y;Liability;Y;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Movements through income
T512000;T512020;Y;Liability;Y;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Prior year adjustments
T512000;T512030;Y;Liability;Y;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other movements
T512000;T512040;Y;Liability;Y;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax rate changes
T512000;T512050;Y;Liability;Y;Y;;;;TAX_TYPE;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;MVMNT Value Allowance
TAX;T6;Y;GroupLabel;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;ACC_TAX;Y;;10;;;;Tax payable and receivable
T6;T600000;Y;Asset;N;Y;;;;TAX_TYPE;T6;;TotC2;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Specification of movements tax payable and receivable
T600000;T600100;Y;Asset;N;Y;;;;TAX_TYPE;T6;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Corporate tax (national)
T600000;T600110;Y;Asset;N;Y;;;;TAX_TYPE;T6;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Corporate tax (Subnational)
T600000;T600200;Y;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total other tax components
T600200;T600210;Y;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Provision for uncertain tax positions
T600200;T600220;Y;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Withholding taxes on dividends
T600200;T600230;Y;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Withholding taxes on interest
T600200;T600240;Y;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other withholding taxes
T600200;T600250;Y;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other income taxes
T6;T610000;Y;Asset;N;Y;;;;TAX_TYPE;T6B;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Specification return to accrual
TAX;T7;Y;GroupLabel;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;ACC_TAX;Y;;10;;;;Tax rate reconciliation
T7;T700000;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Income before income taxes
T7;T701000;Y;Liability;N;N;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Nominal tax rate
T701000;T700100;Y;Liability;Y;N;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Nominal national tax rate
T701000;T700200;Y;Liability;Y;N;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Nominal sub national tax rate
T7;T702000;Y;Liability;Y;N;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of different tax rates
T7;T710000;Y;Liability;N;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total tax expense (+)/ benefit (-)
T710000;T711000;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Expected total tax expense (+) / benefit (-)
T710000;T712000;Y;Liability;N;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of permanent differences
T712000;T712100;Y;Liability;N;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Permanently nondeductible items
T712100;T712101;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1010;;;Taxes
T712100;T712102;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1020;;;Share in the result of subsidiaries
T712100;T712103;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1030;;;Losses on sale of subsidiaries
T712100;T712104;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1040;;;Interest expenses
T712100;T712105;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1050;;;Foreign exchange results
T712100;T712106;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1060;;;Other financial expenses
T712100;T712107;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1070;;;Fines and penalties
T712100;T712108;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1080;;;Meals and entertainment expenses
T712100;T712109;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1090;;;Souvenirs/gifts and such
T712100;T712110;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1100;;;Part of charitable contributions
T712100;T712111;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1110;;;Other business expenses
T712100;T712112;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1120;;;Bad debt losses
T712100;T712113;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1130;;;Depreciation expenses
T712100;T712114;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1140;;;Amortization expenses
T712100;T712115;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1150;;;Personnel related expenses
T712100;T712116;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P1160;;;Other  items
T712000;T712200;Y;Liability;N;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Permanently nontaxable items
T712200;T712201;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P2010;;;Share in the result of subsidiaries
T712200;T712202;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P2020;;;Gains on sale of subsidiaries
T712200;T712203;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P2030;;;Capital gains (not subsidiary related)
T712200;T712204;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P2040;;;Governments grants/subsidies
T712200;T712205;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P2050;;;Interest income
T712200;T712206;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P2060;;;Other items
T712000;T712300;Y;Liability;N;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other permanent items
T712300;T712301;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P3010;;;Deductible part of income tax expense (-)
T712300;T712302;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P3020;;;Tax holidays (-)
T712300;T712303;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P3030;;;Tax incentives (-)
T712300;T712304;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P3040;;;Other income for tax not for book purposes (+)
T712300;T712305;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;P3050;;;Other expenses for tax not for book purposes (-)
T710000;T713000;Y;Liability;N;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of deferred taxes
T713000;T713010;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of change in tax rates
T713000;T713020;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of prior year adjustments
T713000;T713030;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of expiration of tax carryforwards
T713000;T713040;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of WHT on undistributed earnings
T713000;T713050;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Current year tax losses unrecognized
T713000;T713060;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Utilization of previously unrecognized tax losses
T713000;T713070;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Recognition of previously unrecognized tax losses
T713000;T713080;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Derecognition of previously recognized tax losses
T713000;T713090;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other effects of (de)recognition of tax losses
T713000;T713100;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of other carryforwards not recognized
T713000;T713110;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of tax credits not recognized
T713000;T713120;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of deductible temporary differences not recognized
T713000;T713140;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other deferred tax effect
T710000;T714000;Y;Liability;N;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of other tax expense (+) / benefit (-)
T714000;T714010;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of tax credits
T714000;T714020;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Adjustment prior years / return to accrual
T714000;T714030;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect from refiling tax returns (Russia Only)
T714000;T714040;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax effect of intragroup dividends
T714000;T714050;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Withholding tax on undistributed earnings
T714000;T714060;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other Withholding taxes (e.g. interest, royalties, fees)
T714000;T714070;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax contingencies
T714000;T714080;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Consolidation effects
T714000;T714090;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Effect of minimum tax
T714000;T714100;Y;Liability;Y;Y;;;;;T7;;;;2;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other
TAX;T11;Y;GroupLabel;N;N;;;;;;;;;0;N;N;N;N;N;N;N;;;N;N;ACC_TAX;Y;;10;;;;Tax summary
T11;T110000;Y;Asset;N;N;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax summary balance sheet
T110000;T110100;Y;Asset;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Deferred tax asset
T110000;T110200;Y;Asset;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Current income tax asset
T110000;T110250;Y;Asset;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Non current income tax asset
T110000;T110300;Y;Asset;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Deferred tax liabilities
T110000;T110400;Y;Asset;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Current income tax payable
T110000;T110450;Y;Asset;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Non current income tax payable
T110000;T110500;Y;Asset;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Income tax provisions
T11;T111000;Y;Liability;N;N;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax summary income statement
T111000;T111100;Y;Liability;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Deferred income tax
T111000;T111200;Y;Liability;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Income tax accrual in current tax return
T111000;T111300;Y;Liability;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Refiling of prior year returns
T111000;T111400;Y;Liability;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Income tax provisions
T111000;T111500;Y;Liability;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Withholding taxes
T11;T112000;Y;Revenue;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Cash flow statement
T112000;T112100;Y;Revenue;Y;Y;;;;;T11;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Income tax paid
TAX;VALTAX;Y;Balance;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax validations
VALTAX;VAL300;Y;Balance;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax Validations - National only
VAL300;VAL310;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 4 - Total number of missing specifications Other mvmnts
VAL300;VAL311;Y;Balance;Y;N;;;;;;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 6_2 - E/B vs E/B Schedule 6_1
VAL300;VAL312;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 4 - Total number of incorrect valuation allowance entries
VALTAX;VAL400;Y;Balance;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax Validations - Sub National only
VAL400;VAL410;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 4 - Total number of missing specifications Other mvmnts
VAL400;VAL411;Y;Balance;Y;N;;;;;;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 6_2 - E/B vs E/B Schedule 6_1
VAL400;VAL412;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 4 - Total number of incorrect valuation allowance entries
VALTAX;VAL500;Y;Balance;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax Validations - National + Sub National
VAL500;VAL501;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - FDMEE check report: "1" if one of T11 accounts exceeds threshold
VAL500;VAL501_T;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - FDMEE check report threshold
VAL500;VAL510;Y;Balance;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Balance sheet validations
VAL510;VAL511;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Deferred tax asset
VAL510;VAL512;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Current Income Tax Asset
VAL510;VAL516;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Non current Income Tax Asset
VAL510;VAL513;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Deferred tax liabilities
VAL510;VAL514;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Current Income Tax Payable
VAL510;VAL517;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Non current Income Tax Payable
VAL510;VAL515;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Income Tax Provisions
VAL500;VAL550;Y;Balance;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Income statement validations
VAL550;VAL551;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Deferred income tax
VAL550;VAL552;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Income tax accrual in current tax return
VAL550;VAL553;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Refiling of prior year returns
VAL550;VAL554;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Income tax provisions
VAL550;VAL555;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Withholding taxes
VAL500;VAL580;Y;Balance;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Cash flow statement validations
VAL580;VAL581;Y;Balance;Y;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Schedule 11 - Income tax paid equals Cashflow (7120113)
TAX;SYSTAX;Y;GroupLabel;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;TAX system accounts (used in Tax FR reports)
SYSTAX;T600109;Y;Asset;N;Y;;;;;T6;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Corporate tax total
T600109;T600100;N;Asset;N;Y;;;;TAX_TYPE;T6;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Corporate tax (national)
T600109;T600110;N;Asset;N;Y;;;;TAX_TYPE;T6;;TAX_YEARS;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Corporate tax (Subnational)
SYSTAX;T600209;Y;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Total other tax components excluding T600210
T600209;T600220;N;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Withholding taxes on dividends
T600209;T600230;N;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Withholding taxes on interest
T600209;T600240;N;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other withholding taxes
T600209;T600250;N;Asset;N;Y;;;;TAX_TYPE;T6;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Other income taxes
SYSTAX;T000000;Y;GroupLabel;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX;Y;;10;;;;Tax flag accounts
T000000;T000001;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;Flag to change from Many-to-one to One-to-one mechanism
T000000;T000002;Y;GroupLabel;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;Flags to switch to Tax jurisdiction
T000002;T000002_2013;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2013 (for Entity UD2 sfx. "_2013")
T000002;T000002_2014;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2014 (for Entity UD2 sfx. "_2014")
T000002;T000002_2015;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2015 (for Entity UD2 sfx. "_2015")
T000002;T000002_2016;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2016 (for Entity UD2 sfx. "_2016")
T000002;T000002_2017;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2017 (for Entity UD2 sfx. "_2017")
T000002;T000002_2018;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2018 (for Entity UD2 sfx. "_2018")
T000002;T000002_2019;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2019 (for Entity UD2 sfx. "_2019")
T000002;T000002_2020;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2020 (for Entity UD2 sfx. "_2020")
T000002;T000002_2021;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2021 (for Entity UD2 sfx. "_2021")
T000002;T000002_2022;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2022 (for Entity UD2 sfx. "_2022")
T000002;T000002_2023;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2023 (for Entity UD2 sfx. "_2023")
T000002;T000002_2024;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2024 (for Entity UD2 sfx. "_2024")
T000002;T000002_2025;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2025 (for Entity UD2 sfx. "_2025")
T000002;T000002_2026;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2026 (for Entity UD2 sfx. "_2026")
T000002;T000002_2027;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2027 (for Entity UD2 sfx. "_2027")
T000002;T000002_2028;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2028 (for Entity UD2 sfx. "_2028")
T000002;T000002_2029;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2029 (for Entity UD2 sfx. "_2029")
T000002;T000002_2030;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2030 (for Entity UD2 sfx. "_2030")
T000002;T000002_2031;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;If blank / zero: use Tax jurisdiction as from 2031 (for Entity UD2 sfx. "_2031")
T000000;T000003;Y;BalanceRecurring;N;N;;;;;;;;;0;Y;Y;Y;Y;Y;Y;Y;;;N;N;ACC_TAX_ADMIN;Y;;10;;;;Threshold for Pass/Fail status in FDMEE check report (basis for calc. of VAL501)

!Hierarchies=MovProd
'Parent;Child;IsPrimary;AggregationWeight;SwitchSignForFlow;SwitchTypeForFlow;SecurityClass;IsCalculated;SubmissionGroup;UserDefined1;UserDefined2;UserDefined3;Alias=English
#root;[None];Y;1;N;N;;N;1;;;;None
#root;TotC1;Y;0;N;N;;N;1;;;;Total Custom1
TotC1;M_TOT;Y;1;N;N;;N;1;;;;All  Balance Sheet Movements
M_TOT;OPE;Y;1;N;N;;Y;2;;;;Opening
M_TOT;MOV;Y;1;N;Y;;N;2;;;;Total Movements
M_TOT;VAT;Y;1;N;Y;;N;2;;;;VAT
M_TOT;ADD;Y;1;N;Y;;N;2;;;;Addition
M_TOT;CON;Y;1;N;Y;;N;2;;;;Contribution
M_TOT;PAY;Y;1;N;Y;;N;2;;;;Payment
M_TOT;COL;Y;1;N;Y;;N;2;;;;Collection
M_TOT;ACC;Y;1;N;Y;;N;2;;;;Accrual
M_TOT;REL;Y;1;N;Y;;N;2;;;;Release
M_TOT;RECY;Y;1;N;Y;;N;2;;;;Recycling
M_TOT;DAM;Y;1;N;Y;;N;2;;;;Depreciation / Amortization
M_TOT;IMP;Y;1;N;Y;;N;2;;;;Impairment
M_TOT;IMPR;Y;1;N;Y;;N;2;;;;Impairment reversal
M_TOT;DEL;Y;1;N;Y;;N;2;;;;Write off
M_TOT;CONV;Y;1;N;Y;;N;2;;;;Conversion
M_TOT;FVC;Y;1;N;Y;;N;2;;;;Fair value change
M_TOT;CAP;Y;1;N;Y;;N;2;;;;Capitalization
M_TOT;TRA;Y;1;N;Y;;N;2;;;;Transfer
M_TOT;DISC;Y;1;N;Y;;N;2;;;;Discounting
M_TOT;CHG;Y;1;N;Y;;N;2;;;;Change of Control
M_TOT;DIV;Y;1;N;Y;;N;2;;;;Dividend
M_TOT;DIC;Y;1;N;Y;;N;2;;;;Dividend Cash
M_TOT;IN;Y;1;N;Y;;N;2;;;;IN - Business combinations
IN;IN1;Y;1;N;Y;;N;2;;;;IN - Business combinations 1
IN;IN2;Y;1;N;Y;;N;2;;;;IN - Business combinations 2
IN;IN3;Y;1;N;Y;;N;2;;;;IN - Business combinations 3
IN;IN4;Y;1;N;Y;;N;2;;;;IN - Business combinations 4
IN;IN5;Y;1;N;Y;;N;2;;;;IN - Business combinations 5
M_TOT;OUT;Y;1;N;Y;;N;2;;;;OUT - Deconsol
OUT;OUT1;Y;1;N;Y;;N;2;;;;OUT - Deconsol 1
OUT;OUT2;Y;1;N;Y;;N;2;;;;OUT - Deconsol 2
OUT;OUT3;Y;1;N;Y;;N;2;;;;OUT - Deconsol 3
OUT;OUT4;Y;1;N;Y;;N;2;;;;OUT - Deconsol 4
OUT;OUT5;Y;1;N;Y;;N;2;;;;OUT - Deconsol 5
M_TOT;DISP;Y;1;N;Y;;N;2;;;;Disposal
M_TOT;REC;Y;1;N;Y;;N;2;;;;Reclassification
M_TOT;APP;Y;1;N;Y;;Y;2;;;;Appropriation of Net result
M_TOT;RES;Y;1;N;Y;;N;2;;;;Net Result for the Year
M_TOT;ERR;Y;1;N;Y;;Y;1;;;;Error
M_TOT;HFS;Y;1;N;Y;;N;2;;;;HFS
M_TOT;FXPL;Y;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
M_TOT;OTH;Y;1;N;Y;;N;2;;;;Other
M_TOT;CTA;Y;1;N;Y;;N;2;;;;Fx CTA
CTA;FXCTA;Y;1;N;Y;;N;2;;;;Fx CTA (separate flows on CTA types)
FXCTA;FX_OPE;Y;1;N;Y;;Y;2;;;;Opening
FXCTA;FX_AVE;Y;1;N;Y;;Y;2;;;;Average
FXCTA;FX_IN;Y;1;N;Y;;Y;2;;;;In
FXCTA;FX_OUT;Y;1;N;Y;;Y;2;;;;Out
FXCTA;FX_OVR;Y;1;N;Y;;Y;2;;;;Override
FXCTA;FX_OVR_NC;Y;1;N;Y;;Y;2;;;;Override Non Cash
FXCTA;FX_OVRP;Y;1;N;Y;;Y;2;;;;Override Plug
CTA;CTAI;Y;1;N;Y;;N;2;;;;CTA Input
M_TOT;VAR;Y;1;N;Y;;Y;2;;;;Scope Variation
M_TOT;EXT;Y;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
M_TOT;ENT;Y;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
M_TOT;CLO;Y;0;N;Y;;N;1;;;;Closing
M_TOT;CLO2;Y;0;N;N;;N;1;;;;Tech member set as a balance to fix forecast
TotC1;PROD_000;Y;1;N;N;;N;1;;;;Products
PROD_000;[None];N;1;N;N;;N;1;;;;None
PROD_000;Product;Y;1;N;N;;N;1;;;;Total Product Details
Product;PR_01;Y;1;N;N;;N;1;;;;Voice
Product;PR_02;Y;1;N;N;;N;1;;;;Data
Product;PR_03;Y;1;N;N;;N;1;;;;TV
Product;PR_04;Y;1;N;N;;N;1;;;;Messaging
PR_04;PR_05;Y;1;N;N;;N;1;;;;SMS
PR_04;PR_06;Y;1;N;N;;N;1;;;;MMS
Product;PR_07;Y;1;N;N;;N;1;;;;MFS
PR_07;PR_28;Y;1;N;N;;N;1;;;;Transfers
PR_28;PR_29;Y;1;N;N;;N;1;;;;Domestic P2P airtime transfer
PR_28;PR_30;Y;1;N;N;;N;1;;;;Domestic P2P money transfer
PR_28;PR_31;Y;1;N;N;;N;1;;;;B2C & G2C money transfer
PR_28;PR_32;Y;1;N;N;;N;1;;;;International P2P airtime transfer
PR_28;PR_33;Y;1;N;N;;N;1;;;;International P2P airtime receiving
PR_28;PR_34;Y;1;N;N;;N;1;;;;International P2P money transfer
PR_28;PR_35;Y;1;N;N;;N;1;;;;International P2P money receiving
PR_28;PR_36;Y;1;N;N;;N;1;;;;Transfers, unspecific
PR_07;PR_37;Y;1;N;N;;N;1;;;;Payments
PR_37;PR_38;Y;1;N;N;;N;1;;;;Digital payments
PR_37;PR_39;Y;1;N;N;;N;1;;;;Mobile ticketing
PR_37;PR_40;Y;1;N;N;;N;1;;;;Digital goods payments
PR_37;PR_41;Y;1;N;N;;N;1;;;;Payments, unspecific
PR_07;PR_42;Y;1;N;N;;N;1;;;;Accounts
PR_42;PR_43;Y;1;N;N;;N;1;;;;Savings account
PR_42;PR_44;Y;1;N;N;;N;1;;;;Current account
PR_42;PR_45;Y;1;N;N;;N;1;;;;Accounts, unspecific
PR_07;PR_46;Y;1;N;N;;N;1;;;;Loans
PR_46;PR_47;Y;1;N;N;;N;1;;;;Airtime loans/ overdraft
PR_46;PR_48;Y;1;N;N;;N;1;;;;Micro loans
PR_46;PR_49;Y;1;N;N;;N;1;;;;Credit card loans
PR_46;PR_50;Y;1;N;N;;N;1;;;;Current account overdraft
PR_46;PR_51;Y;1;N;N;;N;1;;;;Device loans
PR_46;PR_52;Y;1;N;N;;N;1;;;;Loans, unspecific
PR_07;PR_53;Y;1;N;N;;N;1;;;;Insurance
PR_53;PR_54;Y;1;N;N;;N;1;;;;Device insurance
PR_53;PR_55;Y;1;N;N;;N;1;;;;Travel insurance
PR_53;PR_56;Y;1;N;N;;N;1;;;;Life insurance
PR_53;PR_57;Y;1;N;N;;N;1;;;;Miscellaneous insurances
PR_53;PR_58;Y;1;N;N;;N;1;;;;Insurance, unspecific
PR_07;PR_59;Y;1;N;N;;N;1;;;;Merchant services
PR_59;PR_60;Y;1;N;N;;N;1;;;;Payment collections
PR_59;PR_61;Y;1;N;N;;N;1;;;;POS deployment
PR_59;PR_62;Y;1;N;N;;N;1;;;;Credit scoring
PR_59;PR_63;Y;1;N;N;;N;1;;;;Couponing/vouchering
PR_59;PR_64;Y;1;N;N;;N;1;;;;Loyalty points redemption
PR_59;PR_65;Y;1;N;N;;N;1;;;;Merchant services, unspecific
PR_07;PR_66;Y;1;N;N;;N;1;;;;MFS, unspecific
Product;PR_08;Y;1;N;N;;N;1;;;;Value Added Services
PR_08;PR_09;Y;1;N;N;;N;1;;;;Content
PR_08;PR_10;Y;1;N;N;;N;1;;;;Video on demand
PR_08;PR_11;Y;1;N;N;;N;1;;;;M2M
PR_08;PR_12;Y;1;N;N;;N;1;;;;VAS Other
Product;PR_17;Y;1;N;N;;N;1;;;;Other product
Product;PR_20;Y;1;N;N;;N;1;;;;Network and Transport
Product;PR_67;Y;1;N;N;;N;1;;;;Connection fees
Product;PR_13;Y;1;N;N;;N;1;;;;IT product
PR_13;PR_23;Y;1;N;N;;N;1;;;;Big data
PR_13;PR_24;Y;1;N;N;;N;1;;;;Managed infrastructure
PR_13;PR_25;Y;1;N;N;;N;1;;;;Enterprise mobility
PR_13;PR_26;Y;1;N;N;;N;1;;;;Cloud services ?  IaaS and SaaS
PR_13;PR_27;Y;1;N;N;;N;1;;;;IT - Others
TotC1;Devices;Y;1;N;N;;N;1;;;;Devices
Devices;DE_01;Y;1;N;N;;N;1;;;;All handheld devices
DE_01;DE_02;Y;1;N;N;;N;1;;;;Feature phone
DE_01;DE_03;Y;1;N;N;;N;1;;;;Smartphone
DE_01;DE_04;Y;1;N;N;;N;1;;;;Tablet
DE_01;DE_10;Y;1;N;N;;N;1;;;;All other handheld devices
Devices;DE_09;Y;1;N;N;;N;1;;;;Mobile Broadband
Devices;DE_05;Y;1;N;N;;N;1;;;;Modem / Router / Switches for sales
Devices;DE_06;Y;1;N;N;;N;1;;;;Accessories
Devices;DE_08;Y;1;N;N;;N;1;;;;IPBX/PABX/IPABX/IAD
Devices;DE_07;Y;1;N;N;;N;1;;;;Other devices
TotC1;T_TOT;Y;1;N;N;;N;10;;;;Tax movement schedules
T_TOT;T2;Y;1;N;N;;N;10;;;;Tax roll forwards
T2;T2001_T;Y;0;N;N;;N;10;;;;Opening balance (total)
T2001_T;T2001_I;Y;1;N;N;;N;10;;;;Opening balance (input)
T2001_T;T2001;Y;1;N;N;;N;10;;;;Opening balance (calculated)
T2;T2_TotalMovements;Y;0;N;N;;N;10;;;;MVMNT - Total movements
T2_TotalMovements;T2002;Y;1;N;N;;N;10;;;;MVMNT - Incurrence (+) / utilization (-)
T2_TotalMovements;T2003;Y;1;N;N;;N;10;;;;MVMNT - Prior year adjustments
T2_TotalMovements;T2004;Y;1;N;N;;N;10;;;;MVMNT - Expiration (-)
T2_TotalMovements;T2005;Y;1;N;N;;N;10;;;;MVMNT - Acquisitions / divestments
T2_TotalMovements;T2006;Y;1;N;N;;N;10;;;;MVMNT - Affecting equity
T2_TotalMovements;T2007;Y;1;N;N;;N;10;;;;MVMNT - Other movements
T2_TotalMovements;T2800;Y;1;N;N;;N;10;;;;MVMNT - Total CTA
T2800;T2800_I;Y;1;N;N;;N;10;;;;MVMNT - CTA Input
T2800;T2800_1;Y;1;N;N;;Y;10;;;;MVMNT - CTA (calculated) - Opening balance
T2800;T2800_2;Y;1;N;N;;Y;10;;;;MVMNT - CTA (calculated) - Movements
T2;T2900;Y;1;N;N;;N;10;;;;Ending balance
T2;T2700;Y;0;N;N;;N;10;;;;Net deferred tax asset
T2700;T2751;Y;1;N;N;;N;10;;;;Valuation allowance
T2700;T2791;Y;1;N;N;;Y;10;;;;Gross deferred tax asset
T2;T2000;Y;0;N;N;;N;10;;;;Year of expiration
T_TOT;T3_4;Y;1;N;N;;N;10;;;;Deferred taxes
T3_4;T3;Y;0;N;N;;N;10;;;;Temporary differences
T3;T3001_C;Y;0;N;N;;N;10;;;;Opening balance book basis
T3;T3001;Y;0;N;N;;N;10;;;;Opening balance tax basis
T3;T3001_T;Y;0;N;N;;N;10;;;;Opening balance temporary differences (total)
T3001_T;T3001_I;Y;1;N;N;;N;10;;;;Opening balance temporary differences (input)
T3001_T;T3001_D;Y;1;N;N;;Y;10;;;;Opening balance temporary differences (calculated)
T3;T3_TotalMovements;Y;0;N;N;;N;10;;;;MVMNT - Total movements in temporary differences
T3_TotalMovements;T3_Movements;Y;1;N;N;;N;10;;;;MVMNT - Movements in temporary differences
T3_Movements;T3002;Y;1;N;N;;N;10;;;;MVMNT - Prior year adjustments
T3_Movements;T3003;Y;1;N;N;;N;10;;;;MVMNT - Acquisitions / divestments
T3_Movements;T3004;Y;1;N;N;;N;10;;;;MVMNT - Affecting equity
T3_Movements;T3005;Y;1;N;N;;N;10;;;;MVMNT - Other movements
T3_TotalMovements;T3050;Y;1;N;N;;Y;10;;;;MVMNT - P/L movement
T3_TotalMovements;T3800;Y;1;N;N;;N;10;;;;MVMNT - Total CTA
T3800;T3800_I;Y;1;N;N;;N;10;;;;MVMNT - CTA Input
T3800;T3800_1;Y;1;N;N;;Y;10;;;;MVMNT - CTA (calculated) - Opening balance
T3800;T3800_2;Y;1;N;N;;Y;10;;;;MVMNT - CTA (calculated) - Movements
T3;T3900_C;Y;0;N;N;;Y;10;;;;Ending balance book basis
T3;T3900_I;Y;0;N;N;;N;10;;;;Ending balance tax basis - input
T3;T3900;Y;0;N;N;;Y;10;;;;Ending balance tax basis - calculated
T3;T3900_D;Y;1;N;N;;Y;10;;;;Ending balance temporary differences
T3_4;T4;Y;1;N;N;;N;10;;;;Deferred taxes
T4;T4001_N;Y;0;N;N;;N;10;;;;Opening balance - Net
T4001_N;T4001;Y;1;N;N;;N;10;;;;Opening balance - Gross
T4001_N;T4001_V;Y;1;N;N;;N;10;;;;Opening balance - Valuation Allowance
T4;T4_TotalMovements;Y;0;N;N;;N;10;;;;MVMNT - Total movements in deferred taxes
T4_TotalMovements;T4_Movements;Y;1;N;N;;N;10;;;;MVMNT - Movements in deferred taxes
T4_Movements;T4002;Y;1;N;N;;N;10;;;;MVMNT - Prior year adjustments
T4_Movements;T4003;Y;1;N;N;;N;10;;;;MVMNT - Acquisitions / divestments
T4_Movements;T4004;Y;1;N;N;;N;10;;;;MVMNT - Affecting equity
T4_Movements;T4005;Y;1;N;N;;N;10;;;;MVMNT - Other movements
T4_Movements;T4700;Y;1;N;N;;N;10;;;;MVMNT - Tax rate changes
T4_TotalMovements;T4050;Y;1;N;N;;N;10;;;;MVMNT - P/L movement
T4_TotalMovements;T4100;Y;1;N;N;;Y;10;;;;MVMNT - P/L movement - Valuation Allowance
T4_TotalMovements;T4200;Y;1;N;N;;N;10;;;;MVMNT - Equity - Valuation Allowance
T4_TotalMovements;T4800;Y;1;N;N;;N;10;;;;MVMNT - Total CTA
T4800;T4800_I;Y;1;N;N;;N;10;;;;MVMNT - CTA Input
T4800;T4800_1;Y;1;N;N;;Y;10;;;;MVMNT - CTA (calculated) - Opening balance
T4800;T4800_2;Y;1;N;N;;Y;10;;;;MVMNT - CTA (calculated) - Movements
T4;T4900_N;Y;1;N;N;;N;10;;;;Ending balance deferred taxes - Net
T4900_N;T4900;Y;1;N;N;;N;10;;;;Ending balance deferred taxes - Gross
T4900_N;T4900_V;Y;1;N;N;;N;10;;;;Ending balance deferred taxes - Valuation Allowance
T4;T4950;Y;0;N;N;;N;10;;;;Deferred tax asset
T4;T4951;Y;0;N;N;;Y;10;;;;Deferred tax liability
T4;T4952;Y;0;N;N;;Y;10;;;;Validation Deferred Tax
T_TOT;T6;Y;1;N;N;;N;10;;;;Tax payable and receivable
T6;T6001_T;Y;0;N;N;;N;10;;;;Opening balance (total)
T6001_T;T6001_I;Y;1;N;N;;N;10;;;;Opening balance (input)
T6001_T;T6001;Y;1;N;N;;N;10;;;;Opening balance (calculated)
T6;T6_TotalMovements;Y;0;N;N;;N;10;;;;MVMNT - Total movements tax payable / receivable
T6_TotalMovements;T6002;Y;1;N;N;;N;10;;;;MVMNT - Tax expense (-) / benefit (+)
T6_TotalMovements;T6003;Y;1;N;N;;N;10;;;;MVMNT - Prior year adjustments
T6_TotalMovements;T6004;Y;1;N;N;;N;10;;;;MVMNT - Effect of refiling tax returns (Russia)
T6_TotalMovements;T6005;Y;1;N;N;;N;10;;;;MVMNT - Taxes paid (+) / received (-)
T6_TotalMovements;T6006;Y;1;N;N;;N;10;;;;MVMNT - Intercompany movements
T6_TotalMovements;T6007;Y;1;N;N;;N;10;;;;MVMNT - Acquisitions / divestments
T6_TotalMovements;T6008;Y;1;N;N;;N;10;;;;MVMNT - Movements through equity
T6_TotalMovements;T6800;Y;1;N;N;;N;10;;;;MVMNT - Total CTA
T6800;T6800_I;Y;1;N;N;;N;10;;;;MVMNT - CTA Input
T6800;T6800_1;Y;1;N;N;;Y;10;;;;MVMNT - CTA (calculated) - Opening balance
T6800;T6800_2;Y;1;N;N;;Y;10;;;;MVMNT - CTA (calculated) - Movements
T6;T6900;Y;1;N;N;;N;10;;;;Ending Balance Schedule 6_1
T6;T6950;Y;0;N;N;;Y;10;;;;Current income tax payable (2350000)
T6;T6953;Y;0;N;N;;N;10;;;;Non current income tax payable (input)
T6;T6951;Y;0;N;N;;Y;10;;;;Current income tax asset (1240000)
T6;T6954;Y;0;N;N;;N;10;;;;Non current income tax asset (input)
T6;T6952;Y;0;N;N;;N;10;;;;Tax receivable (input)
T_TOT;T6B;Y;1;N;N;;N;10;;;;Actual tax position
T6B;T6101;Y;1;N;N;;N;10;;;;Tax based on latest tax return/calculation
T6B;T6102;Y;1;N;N;;N;10;;;;Amendments to tax return/calculation
T6B;T6103;Y;1;N;N;;N;10;;;;Total tax paid to date
T6B;T6110;Y;0;N;N;;Y;10;;;;Ending balance movements Schedule 6_1
T6B;T6120;Y;0;N;N;;Y;10;;;;Validation
T_TOT;T7;Y;1;N;N;;N;10;;;;Tax rate reconciliation
T7;T7100;Y;1;N;N;;Y;10;;;;Amount
T7;T7200;Y;0;N;N;;Y;10;;;;Percentage
T_TOT;T11;Y;1;N;N;;N;10;;;;Adjustment booking
T11;T11000;Y;0;N;N;;Y;10;;;;Amount as should (calculated)
T11;T11100;Y;0;N;N;;Y;10;;;;Amount as is (recorded)
T11;T11900;Y;1;N;N;;Y;10;;;;Adjustment booking
#root;TF_TOT;Y;0;N;N;;N;1;;;;Flow Table
TF_TOT;TF_PropEquip_1;Y;1;N;N;;N;1;;;;
TF_PropEquip_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_PropEquip_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_PropEquip_1;CLO2;N;0;;;;;;;;;
TF_PropEquip_1;ADD;N;1;N;Y;;N;2;;;;Addition
TF_PropEquip_1;CON;N;1;N;Y;;N;2;;;;Contribution
TF_PropEquip_1;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_PropEquip_1;DAM;N;1;N;Y;;N;2;;;;Depreciation / Amortization
TF_PropEquip_1;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_PropEquip_1;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_PropEquip_1;DEL;N;1;N;Y;;N;2;;;;Write off
TF_PropEquip_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_PropEquip_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_PropEquip_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_PropEquip_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_PropEquip_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_PropEquip_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_PropEquip_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_PropEquip_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_PropEquip_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_PropEquip_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_PropEquip_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_PropEquip_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_PropEquip_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_PropEquip_2;Y;1;N;N;;N;1;;;;
TF_PropEquip_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_PropEquip_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_PropEquip_2;CLO2;N;0;;;;;;;;;
TF_PropEquip_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_PropEquip_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_PropEquip_2;ADD;N;1;N;Y;;N;2;;;;Addition
TF_PropEquip_2;CON;N;1;N;Y;;N;2;;;;Contribution
TF_PropEquip_2;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_PropEquip_2;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_PropEquip_2;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_PropEquip_2;DEL;N;1;N;Y;;N;2;;;;Write off
TF_PropEquip_2;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_PropEquip_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_PropEquip_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_PropEquip_2;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_PropEquip_2;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_PropEquip_2;ERR;N;1;N;Y;;Y;1;;;;Error
TF_PropEquip_2;HFS;N;1;N;Y;;N;2;;;;HFS
TF_PropEquip_2;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_PropEquip_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_PropEquip_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_PropEquip_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_PropEquip_3;Y;1;N;N;;N;1;;;;
TF_PropEquip_3;OPE;N;1;N;N;;Y;2;;;;Opening
TF_PropEquip_3;CLO;N;0;N;Y;;N;1;;;;Closing
TF_PropEquip_3;CLO2;N;0;;;;;;;;;
TF_PropEquip_3;ADD;N;1;N;Y;;N;2;;;;Addition
TF_PropEquip_3;CON;N;1;N;Y;;N;2;;;;Contribution
TF_PropEquip_3;DAM;N;1;N;Y;;N;2;;;;Depreciation / Amortization
TF_PropEquip_3;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_PropEquip_3;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_PropEquip_3;DEL;N;1;N;Y;;N;2;;;;Write off
TF_PropEquip_3;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_PropEquip_3;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_PropEquip_3;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_PropEquip_3;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_PropEquip_3;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_PropEquip_3;ERR;N;1;N;Y;;Y;1;;;;Error
TF_PropEquip_3;HFS;N;1;N;Y;;N;2;;;;HFS
TF_PropEquip_3;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_PropEquip_3;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_PropEquip_3;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_PropEquip_3;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_PropEquip_4;Y;1;N;N;;N;1;;;;
TF_PropEquip_4;OPE;N;1;N;N;;Y;2;;;;Opening
TF_PropEquip_4;CLO;N;0;N;Y;;N;1;;;;Closing
TF_PropEquip_4;CLO2;N;0;;;;;;;;;
TF_PropEquip_4;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_PropEquip_4;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_PropEquip_4;ADD;N;1;N;Y;;N;2;;;;Addition
TF_PropEquip_4;CON;N;1;N;Y;;N;2;;;;Contribution
TF_PropEquip_4;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_PropEquip_4;DAM;N;1;N;Y;;N;2;;;;Depreciation / Amortization
TF_PropEquip_4;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_PropEquip_4;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_PropEquip_4;DEL;N;1;N;Y;;N;2;;;;Write off
TF_PropEquip_4;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_PropEquip_4;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_PropEquip_4;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_PropEquip_4;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_PropEquip_4;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_PropEquip_4;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_PropEquip_4;ERR;N;1;N;Y;;Y;1;;;;Error
TF_PropEquip_4;HFS;N;1;N;Y;;N;2;;;;HFS
TF_PropEquip_4;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_PropEquip_4;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_PropEquip_4;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_PropEquip_4;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_PropEquip_5;Y;1;N;N;;N;1;;;;
TF_PropEquip_5;OPE;N;1;N;N;;Y;2;;;;Opening
TF_PropEquip_5;CLO;N;0;N;Y;;N;1;;;;Closing
TF_PropEquip_5;CLO2;N;0;;;;;;;;;
TF_PropEquip_5;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_PropEquip_5;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_PropEquip_5;VAT;N;1;N;Y;;N;2;;;;VAT
TF_PropEquip_5;ADD;N;1;N;Y;;N;2;;;;Addition
TF_PropEquip_5;CON;N;1;N;Y;;N;2;;;;Contribution
TF_PropEquip_5;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_PropEquip_5;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_PropEquip_5;DEL;N;1;N;Y;;N;2;;;;Write off
TF_PropEquip_5;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_PropEquip_5;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_PropEquip_5;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_PropEquip_5;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_PropEquip_5;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_PropEquip_5;ERR;N;1;N;Y;;Y;1;;;;Error
TF_PropEquip_5;HFS;N;1;N;Y;;N;2;;;;HFS
TF_PropEquip_5;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_PropEquip_5;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_PropEquip_5;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_PropEquip_5;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_IntAsset_2;Y;1;N;N;;N;1;;;;
TF_IntAsset_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_IntAsset_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_IntAsset_2;CLO2;N;0;;;;;;;;;
TF_IntAsset_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_IntAsset_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_IntAsset_2;ADD;N;1;N;Y;;N;2;;;;Addition
TF_IntAsset_2;CON;N;1;N;Y;;N;2;;;;Contribution
TF_IntAsset_2;DAM;N;1;N;Y;;N;2;;;;Depreciation / Amortization
TF_IntAsset_2;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_IntAsset_2;DEL;N;1;N;Y;;N;2;;;;Write off
TF_IntAsset_2;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_IntAsset_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_IntAsset_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_IntAsset_2;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_IntAsset_2;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_IntAsset_2;ERR;N;1;N;Y;;Y;1;;;;Error
TF_IntAsset_2;HFS;N;1;N;Y;;N;2;;;;HFS
TF_IntAsset_2;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_IntAsset_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_IntAsset_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_IntAsset_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_IntAsset_3;Y;1;N;N;;N;1;;;;
TF_IntAsset_3;OPE;N;1;N;N;;Y;2;;;;Opening
TF_IntAsset_3;CLO;N;0;N;Y;;N;1;;;;Closing
TF_IntAsset_3;CLO2;N;0;;;;;;;;;
TF_IntAsset_3;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_IntAsset_3;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_IntAsset_3;DAM;N;1;N;Y;;N;2;;;;Depreciation / Amortization
TF_IntAsset_3;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_IntAsset_3;DEL;N;1;N;Y;;N;2;;;;Write off
TF_IntAsset_3;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_IntAsset_3;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_IntAsset_3;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_IntAsset_3;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_IntAsset_3;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_IntAsset_3;ERR;N;1;N;Y;;Y;1;;;;Error
TF_IntAsset_3;HFS;N;1;N;Y;;N;2;;;;HFS
TF_IntAsset_3;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_IntAsset_3;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_IntAsset_3;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_IntAsset_3;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_IntAsset_4;Y;1;N;N;;N;1;;;;
TF_IntAsset_4;OPE;N;1;N;N;;Y;2;;;;Opening
TF_IntAsset_4;CLO;N;0;N;Y;;N;1;;;;Closing
TF_IntAsset_4;CLO2;N;0;;;;;;;;;
TF_IntAsset_4;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_IntAsset_4;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_IntAsset_4;ADD;N;1;N;Y;;N;2;;;;Addition
TF_IntAsset_4;CON;N;1;N;Y;;N;2;;;;Contribution
TF_IntAsset_4;DAM;N;1;N;Y;;N;2;;;;Depreciation / Amortization
TF_IntAsset_4;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_IntAsset_4;DEL;N;1;N;Y;;N;2;;;;Write off
TF_IntAsset_4;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_IntAsset_4;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_IntAsset_4;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_IntAsset_4;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_IntAsset_4;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_IntAsset_4;ERR;N;1;N;Y;;Y;1;;;;Error
TF_IntAsset_4;HFS;N;1;N;Y;;N;2;;;;HFS
TF_IntAsset_4;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_IntAsset_4;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_IntAsset_4;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_IntAsset_4;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Goodwill_1;Y;1;N;N;;N;1;;;;
TF_Goodwill_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Goodwill_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Goodwill_1;CLO2;N;0;;;;;;;;;
TF_Goodwill_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Goodwill_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Goodwill_1;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Goodwill_1;REL;N;1;N;Y;;N;2;;;;Release
TF_Goodwill_1;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_Goodwill_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Goodwill_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Goodwill_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_Goodwill_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_Goodwill_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_Goodwill_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Goodwill_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Goodwill_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Goodwill_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Inv_1;Y;1;N;N;;N;1;;;;
TF_Inv_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Inv_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Inv_1;CLO2;N;0;;;;;;;;;
TF_Inv_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Inv_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Inv_1;ADD;N;1;N;Y;;N;2;;;;Addition
TF_Inv_1;CON;N;1;N;Y;;N;2;;;;Contribution
TF_Inv_1;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Inv_1;REL;N;1;N;Y;;N;2;;;;Release
TF_Inv_1;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_Inv_1;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_Inv_1;DEL;N;1;N;Y;;N;2;;;;Write off
TF_Inv_1;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_Inv_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Inv_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Inv_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Inv_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_Inv_1;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Inv_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Inv_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Inv_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_Inv_1;CTAI;N;1;N;Y;;N;2;;;;CTA Input
TF_Inv_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Inv_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Inv_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Inv_2;Y;1;N;N;;N;1;;;;
TF_Inv_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Inv_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Inv_2;CLO2;N;0;;;;;;;;;
TF_Inv_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Inv_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Inv_2;ADD;N;1;N;Y;;N;2;;;;Addition
TF_Inv_2;CON;N;1;N;Y;;N;2;;;;Contribution
TF_Inv_2;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Inv_2;REL;N;1;N;Y;;N;2;;;;Release
TF_Inv_2;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_Inv_2;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_Inv_2;DEL;N;1;N;Y;;N;2;;;;Write off
TF_Inv_2;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_Inv_2;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_Inv_2;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Inv_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Inv_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Inv_2;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_Inv_2;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Inv_2;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Inv_2;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Inv_2;HFS;N;1;N;Y;;N;2;;;;HFS
TF_Inv_2;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_Inv_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Inv_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Inv_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Inv_3;Y;1;N;N;;N;1;;;;
TF_Inv_3;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Inv_3;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Inv_3;CLO2;N;0;;;;;;;;;
TF_Inv_3;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Inv_3;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Inv_3;ADD;N;1;N;Y;;N;2;;;;Addition
TF_Inv_3;CON;N;1;N;Y;;N;2;;;;Contribution
TF_Inv_3;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_Inv_3;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_Inv_3;DEL;N;1;N;Y;;N;2;;;;Write off
TF_Inv_3;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_Inv_3;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Inv_3;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Inv_3;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Inv_3;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_Inv_3;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Inv_3;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Inv_3;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Inv_3;HFS;N;1;N;Y;;N;2;;;;HFS
TF_Inv_3;CTAI;N;1;N;Y;;N;2;;;;CTA Input
TF_Inv_3;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Inv_3;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Inv_3;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_1;Y;1;N;N;;N;1;;;;
TF_FinAsset_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_1;CLO2;N;0;;;;;;;;;
TF_FinAsset_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_1;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_1;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_1;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_1;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_1;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_1;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinAsset_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_1;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_2;Y;1;N;N;;N;1;;;;
TF_FinAsset_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_2;CLO2;N;0;;;;;;;;;
TF_FinAsset_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_2;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_2;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_2;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_2;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_2;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_2;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_2;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_3;Y;1;N;N;;N;1;;;;
TF_FinAsset_3;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_3;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_3;CLO2;N;0;;;;;;;;;
TF_FinAsset_3;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_3;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_3;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_3;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_3;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_3;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_3;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_3;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_3;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_3;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinAsset_3;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_3;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_3;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_3;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_3;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_3;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_3;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_3;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_3;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_3;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_3;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_3;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_4;Y;1;N;N;;N;1;;;;
TF_FinAsset_4;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_4;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_4;CLO2;N;0;;;;;;;;;
TF_FinAsset_4;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_4;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_4;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_4;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_4;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_4;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_4;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_4;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_4;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_4;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_4;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_4;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_4;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_4;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_4;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_4;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_4;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_5;Y;1;N;N;;N;1;;;;
TF_FinAsset_5;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_5;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_5;CLO2;N;0;;;;;;;;;
TF_FinAsset_5;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_5;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_5;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_5;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_5;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_5;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_5;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_5;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_5;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_5;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_5;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_5;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_5;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_5;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_5;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_5;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_5;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_5;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_6;Y;1;N;N;;N;1;;;;
TF_FinAsset_6;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_6;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_6;CLO2;N;0;;;;;;;;;
TF_FinAsset_6;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_6;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_6;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_6;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_6;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_6;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_6;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_6;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_6;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_6;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinAsset_6;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_6;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_6;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_6;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_6;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_6;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_6;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_6;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_6;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_6;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_6;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_6;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_7;Y;1;N;N;;N;1;;;;
TF_FinAsset_7;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_7;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_7;CLO2;N;0;;;;;;;;;
TF_FinAsset_7;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_7;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_7;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_7;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_7;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_7;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_7;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_7;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_7;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_7;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_7;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_7;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_7;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_7;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_7;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_7;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_7;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_7;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_8;Y;1;N;N;;N;1;;;;
TF_FinAsset_8;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_8;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_8;CLO2;N;0;;;;;;;;;
TF_FinAsset_8;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_8;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_8;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_8;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_8;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinAsset_8;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_8;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_8;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_8;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_8;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_8;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_8;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_8;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_8;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_8;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_8;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_8;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_9;Y;1;N;N;;N;1;;;;
TF_FinAsset_9;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_9;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_9;CLO2;N;0;;;;;;;;;
TF_FinAsset_9;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_9;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_9;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_9;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_9;REL;N;1;N;Y;;N;2;;;;Release
TF_FinAsset_9;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_9;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_9;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_9;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_9;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_9;APP;N;1;N;Y;;Y;2;;;;Appropriation of Net result
TF_FinAsset_9;RES;N;1;N;Y;;N;2;;;;Net Result for the Year
TF_FinAsset_9;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_9;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_9;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_9;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_9;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_9;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_10;Y;1;N;N;;N;1;;;;
TF_FinAsset_10;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_10;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_10;CLO2;N;0;;;;;;;;;
TF_FinAsset_10;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_10;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_10;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_10;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_10;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_10;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_10;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_10;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_10;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_10;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_10;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_10;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_10;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_10;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_10;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_10;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_10;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_10;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_11;Y;1;N;N;;N;1;;;;
TF_FinAsset_11;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_11;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_11;CLO2;N;0;;;;;;;;;
TF_FinAsset_11;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_11;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_11;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinAsset_11;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_11;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_11;REL;N;1;N;Y;;N;2;;;;Release
TF_FinAsset_11;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinAsset_11;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_11;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_11;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_11;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_11;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_11;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_11;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_11;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_11;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_11;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_11;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_11;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_12;Y;1;N;N;;N;1;;;;
TF_FinAsset_12;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_12;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_12;CLO2;N;0;;;;;;;;;
TF_FinAsset_12;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_12;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_12;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinAsset_12;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_12;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_12;REL;N;1;N;Y;;N;2;;;;Release
TF_FinAsset_12;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_12;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinAsset_12;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_12;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_12;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_12;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_12;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_12;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_12;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_12;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_12;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_12;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_12;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_12;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_13;Y;1;N;N;;N;1;;;;
TF_FinAsset_13;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_13;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_13;CLO2;N;0;;;;;;;;;
TF_FinAsset_13;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_13;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_13;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_13;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_13;REL;N;1;N;Y;;N;2;;;;Release
TF_FinAsset_13;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_13;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_13;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_13;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_13;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_13;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_13;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_13;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_13;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_13;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_13;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_13;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_13;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_13;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_13;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_14;Y;1;N;N;;N;1;;;;
TF_FinAsset_14;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_14;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_14;CLO2;N;0;;;;;;;;;
TF_FinAsset_14;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_14;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_14;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_14;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_14;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinAsset_14;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_14;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_14;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_14;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_14;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_14;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_14;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_14;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_14;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_14;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_14;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_14;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_14;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_14;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_14;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_14;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_15;Y;1;N;N;;N;1;;;;
TF_FinAsset_15;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_15;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_15;CLO2;N;0;;;;;;;;;
TF_FinAsset_15;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_15;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_15;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_15;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_15;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinAsset_15;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_15;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_15;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_15;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_15;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_15;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_15;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_15;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_15;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_15;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_15;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_15;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_15;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_15;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_15;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_15;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_15;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_15;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_16;Y;1;N;N;;N;1;;;;
TF_FinAsset_16;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_16;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_16;CLO2;N;0;;;;;;;;;
TF_FinAsset_16;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_16;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_16;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_16;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_16;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinAsset_16;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_16;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_16;REL;N;1;N;Y;;N;2;;;;Release
TF_FinAsset_16;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_16;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_16;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_16;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_16;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinAsset_16;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_16;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_16;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_16;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_16;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_16;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinAsset_16;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_16;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_16;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_16;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_16;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_16;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_17;Y;1;N;N;;N;1;;;;
TF_FinAsset_17;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_17;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_17;CLO2;N;0;;;;;;;;;
TF_FinAsset_17;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_17;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_17;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_17;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_17;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_17;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_17;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_17;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_17;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_17;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinAsset_17;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_17;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_17;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_17;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_17;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_17;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_17;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_17;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_17;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_18;Y;1;N;N;;N;1;;;;
TF_FinAsset_18;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_18;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_18;CLO2;N;0;;;;;;;;;
TF_FinAsset_18;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_18;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_18;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_18;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_18;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_18;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_19;Y;1;N;N;;N;1;;;;
TF_FinAsset_19;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_19;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_19;CLO2;N;0;;;;;;;;;
TF_FinAsset_19;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_19;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_19;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_19;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_19;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_19;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_19;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_19;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinAsset_19;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_19;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_19;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_19;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_19;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_19;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_19;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_19;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_19;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_19;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_19;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_19;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_20;Y;1;N;N;;N;1;;;;
TF_FinAsset_20;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_20;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_20;CLO2;N;0;;;;;;;;;
TF_FinAsset_20;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_20;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_20;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_20;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_20;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_20;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_20;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_20;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_20;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_20;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_20;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_20;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_20;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_20;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_21;Y;1;N;N;;N;1;;;;
TF_FinAsset_21;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_21;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_21;CLO2;N;0;;;;;;;;;
TF_FinAsset_21;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_21;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_21;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_21;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_21;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_21;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_21;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_21;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_21;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_21;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinAsset_21;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_21;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_21;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_21;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_21;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_21;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_21;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_21;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_21;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_21;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_21;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_21;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_22;Y;1;N;N;;N;1;;;;
TF_FinAsset_22;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_22;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_22;CLO2;N;0;;;;;;;;;
TF_FinAsset_22;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_22;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_22;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_22;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_22;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_22;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_22;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_22;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_22;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_22;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_22;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_22;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_22;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_22;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_22;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_22;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_22;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_23;Y;1;N;N;;N;1;;;;
TF_FinAsset_23;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_23;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_23;CLO2;N;0;;;;;;;;;
TF_FinAsset_23;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_23;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_23;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_23;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_23;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_23;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_23;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_23;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_23;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_23;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_23;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_23;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_23;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_23;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_23;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_23;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_23;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_23;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_24;Y;1;N;N;;N;1;;;;
TF_FinAsset_24;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_24;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_24;CLO2;N;0;;;;;;;;;
TF_FinAsset_24;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_24;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_24;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_24;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_24;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_24;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_24;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_24;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_24;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_24;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinAsset_24;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_24;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_24;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_24;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_24;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_24;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_24;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_24;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_24;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_24;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_24;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_24;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_25;Y;1;N;N;;N;1;;;;
TF_FinAsset_25;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_25;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_25;CLO2;N;0;;;;;;;;;
TF_FinAsset_25;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_25;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_25;ADD;N;1;N;Y;;N;2;;;;Addition
TF_FinAsset_25;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinAsset_25;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_25;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_25;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_25;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_25;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_25;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_25;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_25;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_25;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_25;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_25;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_25;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_25;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_25;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_26;Y;1;N;N;;N;1;;;;
TF_FinAsset_26;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_26;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_26;CLO2;N;0;;;;;;;;;
TF_FinAsset_26;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_26;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_26;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_26;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_26;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinAsset_26;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_26;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_26;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_26;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_26;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_26;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_26;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_26;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_26;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_26;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_26;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_26;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_27;Y;1;N;N;;N;1;;;;
TF_FinAsset_27;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_27;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_27;CLO2;N;0;;;;;;;;;
TF_FinAsset_27;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_27;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_27;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_27;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_27;REL;N;1;N;Y;;N;2;;;;Release
TF_FinAsset_27;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_27;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_27;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_27;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_27;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_27;APP;N;1;N;Y;;Y;2;;;;Appropriation of Net result
TF_FinAsset_27;RES;N;1;N;Y;;N;2;;;;Net Result for the Year
TF_FinAsset_27;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_27;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_27;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_27;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_27;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_27;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_28;Y;1;N;N;;N;1;;;;
TF_FinAsset_28;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_28;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_28;CLO2;N;0;;;;;;;;;
TF_FinAsset_28;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_28;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_28;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinAsset_28;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_28;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_28;REL;N;1;N;Y;;N;2;;;;Release
TF_FinAsset_28;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinAsset_28;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_28;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_28;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_28;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_28;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_28;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_28;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_28;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_28;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_28;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_28;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_28;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_29;Y;1;N;N;;N;1;;;;
TF_FinAsset_29;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_29;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_29;CLO2;N;0;;;;;;;;;
TF_FinAsset_29;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_29;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_29;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinAsset_29;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_29;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_29;REL;N;1;N;Y;;N;2;;;;Release
TF_FinAsset_29;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinAsset_29;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinAsset_29;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_29;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_29;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_29;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_29;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_29;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_29;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_29;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_29;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_29;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_29;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_29;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinAsset_30;Y;1;N;N;;N;1;;;;
TF_FinAsset_30;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinAsset_30;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinAsset_30;CLO2;N;0;;;;;;;;;
TF_FinAsset_30;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinAsset_30;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinAsset_30;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinAsset_30;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinAsset_30;REL;N;1;N;Y;;N;2;;;;Release
TF_FinAsset_30;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_FinAsset_30;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_FinAsset_30;DEL;N;1;N;Y;;N;2;;;;Write off
TF_FinAsset_30;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinAsset_30;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinAsset_30;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinAsset_30;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinAsset_30;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinAsset_30;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinAsset_30;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinAsset_30;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinAsset_30;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinAsset_30;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinAsset_30;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinAsset_30;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_NonFinAsset_1;Y;1;N;N;;N;1;;;;
TF_NonFinAsset_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_NonFinAsset_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_NonFinAsset_1;CLO2;N;0;;;;;;;;;
TF_NonFinAsset_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_NonFinAsset_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_NonFinAsset_1;ADD;N;1;N;Y;;N;2;;;;Addition
TF_NonFinAsset_1;COL;N;1;N;Y;;N;2;;;;Collection
TF_NonFinAsset_1;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_NonFinAsset_1;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_NonFinAsset_1;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_NonFinAsset_1;DEL;N;1;N;Y;;N;2;;;;Write off
TF_NonFinAsset_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_NonFinAsset_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_NonFinAsset_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_NonFinAsset_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_NonFinAsset_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_NonFinAsset_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_NonFinAsset_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_NonFinAsset_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_NonFinAsset_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_NonFinAsset_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_NonFinAsset_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_NonFinAsset_2;Y;1;N;N;;N;1;;;;
TF_NonFinAsset_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_NonFinAsset_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_NonFinAsset_2;CLO2;N;0;;;;;;;;;
TF_NonFinAsset_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_NonFinAsset_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_NonFinAsset_2;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_NonFinAsset_2;REL;N;1;N;Y;;N;2;;;;Release
TF_NonFinAsset_2;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_NonFinAsset_2;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_NonFinAsset_2;ERR;N;1;N;Y;;Y;1;;;;Error
TF_NonFinAsset_2;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_NonFinAsset_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_NonFinAsset_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_NonFinAsset_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_NonFinAsset_3;Y;1;N;N;;N;1;;;;
TF_NonFinAsset_3;OPE;N;1;N;N;;Y;2;;;;Opening
TF_NonFinAsset_3;CLO;N;0;N;Y;;N;1;;;;Closing
TF_NonFinAsset_3;CLO2;N;0;;;;;;;;;
TF_NonFinAsset_3;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_NonFinAsset_3;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_NonFinAsset_3;ADD;N;1;N;Y;;N;2;;;;Addition
TF_NonFinAsset_3;CON;N;1;N;Y;;N;2;;;;Contribution
TF_NonFinAsset_3;COL;N;1;N;Y;;N;2;;;;Collection
TF_NonFinAsset_3;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_NonFinAsset_3;REL;N;1;N;Y;;N;2;;;;Release
TF_NonFinAsset_3;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_NonFinAsset_3;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_NonFinAsset_3;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_NonFinAsset_3;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_NonFinAsset_3;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_NonFinAsset_3;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_NonFinAsset_3;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_NonFinAsset_3;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_NonFinAsset_3;ERR;N;1;N;Y;;Y;1;;;;Error
TF_NonFinAsset_3;HFS;N;1;N;Y;;N;2;;;;HFS
TF_NonFinAsset_3;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_NonFinAsset_3;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_NonFinAsset_3;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_NonFinAsset_3;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_NonFinAsset_3;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_NonFinAsset_4;Y;1;N;N;;N;1;;;;
TF_NonFinAsset_4;OPE;N;1;N;N;;Y;2;;;;Opening
TF_NonFinAsset_4;CLO;N;0;N;Y;;N;1;;;;Closing
TF_NonFinAsset_4;CLO2;N;0;;;;;;;;;
TF_NonFinAsset_4;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_NonFinAsset_4;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_NonFinAsset_4;ADD;N;1;N;Y;;N;2;;;;Addition
TF_NonFinAsset_4;CON;N;1;N;Y;;N;2;;;;Contribution
TF_NonFinAsset_4;COL;N;1;N;Y;;N;2;;;;Collection
TF_NonFinAsset_4;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_NonFinAsset_4;REL;N;1;N;Y;;N;2;;;;Release
TF_NonFinAsset_4;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_NonFinAsset_4;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_NonFinAsset_4;DEL;N;1;N;Y;;N;2;;;;Write off
TF_NonFinAsset_4;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_NonFinAsset_4;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_NonFinAsset_4;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_NonFinAsset_4;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_NonFinAsset_4;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_NonFinAsset_4;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_NonFinAsset_4;ERR;N;1;N;Y;;Y;1;;;;Error
TF_NonFinAsset_4;HFS;N;1;N;Y;;N;2;;;;HFS
TF_NonFinAsset_4;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_NonFinAsset_4;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_NonFinAsset_4;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_NonFinAsset_4;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_NonFinAsset_5;Y;1;N;N;;N;1;;;;
TF_NonFinAsset_5;OPE;N;1;N;N;;Y;2;;;;Opening
TF_NonFinAsset_5;CLO;N;0;N;Y;;N;1;;;;Closing
TF_NonFinAsset_5;CLO2;N;0;;;;;;;;;
TF_NonFinAsset_5;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_NonFinAsset_5;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_NonFinAsset_5;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_NonFinAsset_5;REL;N;1;N;Y;;N;2;;;;Release
TF_NonFinAsset_5;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_NonFinAsset_5;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_NonFinAsset_5;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_NonFinAsset_5;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_NonFinAsset_5;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_NonFinAsset_5;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_NonFinAsset_5;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_NonFinAsset_6;Y;1;N;N;;N;1;;;;
TF_NonFinAsset_6;OPE;N;1;N;N;;Y;2;;;;Opening
TF_NonFinAsset_6;CLO;N;0;N;Y;;N;1;;;;Closing
TF_NonFinAsset_6;CLO2;N;0;;;;;;;;;
TF_NonFinAsset_6;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_NonFinAsset_6;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_NonFinAsset_6;ADD;N;1;N;Y;;N;2;;;;Addition
TF_NonFinAsset_6;CON;N;1;N;Y;;N;2;;;;Contribution
TF_NonFinAsset_6;COL;N;1;N;Y;;N;2;;;;Collection
TF_NonFinAsset_6;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_NonFinAsset_6;REL;N;1;N;Y;;N;2;;;;Release
TF_NonFinAsset_6;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_NonFinAsset_6;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_NonFinAsset_6;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_NonFinAsset_6;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_NonFinAsset_6;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_NonFinAsset_6;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_NonFinAsset_6;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_NonFinAsset_6;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_NonFinAsset_6;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_NonFinAsset_6;HFS;N;1;N;Y;;N;2;;;;HFS
TF_NonFinAsset_6;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_NonFinAsset_6;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_NonFinAsset_6;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_NonFinAsset_6;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_NonFinAsset_6;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_NonFinAsset_7;Y;1;N;N;;N;1;;;;
TF_NonFinAsset_7;OPE;N;1;N;N;;Y;2;;;;Opening
TF_NonFinAsset_7;CLO;N;0;N;Y;;N;1;;;;Closing
TF_NonFinAsset_7;CLO2;N;0;;;;;;;;;
TF_NonFinAsset_7;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_NonFinAsset_7;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_NonFinAsset_7;ADD;N;1;N;Y;;N;2;;;;Addition
TF_NonFinAsset_7;CON;N;1;N;Y;;N;2;;;;Contribution
TF_NonFinAsset_7;COL;N;1;N;Y;;N;2;;;;Collection
TF_NonFinAsset_7;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_NonFinAsset_7;REL;N;1;N;Y;;N;2;;;;Release
TF_NonFinAsset_7;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_NonFinAsset_7;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_NonFinAsset_7;DEL;N;1;N;Y;;N;2;;;;Write off
TF_NonFinAsset_7;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_NonFinAsset_7;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_NonFinAsset_7;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_NonFinAsset_7;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_NonFinAsset_7;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_NonFinAsset_7;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_NonFinAsset_7;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_NonFinAsset_7;HFS;N;1;N;Y;;N;2;;;;HFS
TF_NonFinAsset_7;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_NonFinAsset_7;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_NonFinAsset_7;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_NonFinAsset_7;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Invent_1;Y;1;N;N;;N;1;;;;
TF_Invent_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Invent_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Invent_1;CLO2;N;0;;;;;;;;;
TF_Invent_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Invent_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Invent_1;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_Invent_1;ADD;N;1;N;Y;;N;2;;;;Addition
TF_Invent_1;CON;N;1;N;Y;;N;2;;;;Contribution
TF_Invent_1;DEL;N;1;N;Y;;N;2;;;;Write off
TF_Invent_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Invent_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Invent_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Invent_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_Invent_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Invent_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_Invent_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_Invent_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Invent_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Invent_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Invent_2;Y;1;N;N;;N;1;;;;
TF_Invent_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Invent_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Invent_2;CLO2;N;0;;;;;;;;;
TF_Invent_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Invent_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Invent_2;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_Invent_2;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Invent_2;REL;N;1;N;Y;;N;2;;;;Release
TF_Invent_2;DEL;N;1;N;Y;;N;2;;;;Write off
TF_Invent_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Invent_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Invent_2;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_Invent_2;HFS;N;1;N;Y;;N;2;;;;HFS
TF_Invent_2;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_Invent_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Invent_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Invent_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_TradeReceiv_1;Y;1;N;N;;N;1;;;;
TF_TradeReceiv_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_TradeReceiv_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_TradeReceiv_1;CLO2;N;0;;;;;;;;;
TF_TradeReceiv_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_TradeReceiv_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_TradeReceiv_1;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_TradeReceiv_1;COL;N;1;N;Y;;N;2;;;;Collection
TF_TradeReceiv_1;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_TradeReceiv_1;REL;N;1;N;Y;;N;2;;;;Release
TF_TradeReceiv_1;DEL;N;1;N;Y;;N;2;;;;Write off
TF_TradeReceiv_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_TradeReceiv_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_TradeReceiv_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_TradeReceiv_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_TradeReceiv_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_TradeReceiv_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_TradeReceiv_1;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_TradeReceiv_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_TradeReceiv_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_TradeReceiv_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_TradeReceiv_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_TradeReceiv_2;Y;1;N;N;;N;1;;;;
TF_TradeReceiv_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_TradeReceiv_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_TradeReceiv_2;CLO2;N;0;;;;;;;;;
TF_TradeReceiv_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_TradeReceiv_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_TradeReceiv_2;ERR;N;1;N;Y;;Y;1;;;;Error
TF_TradeReceiv_2;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_TradeReceiv_2;REL;N;1;N;Y;;N;2;;;;Release
TF_TradeReceiv_2;DEL;N;1;N;Y;;N;2;;;;Write off
TF_TradeReceiv_2;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_TradeReceiv_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_TradeReceiv_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_TradeReceiv_2;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_TradeReceiv_2;HFS;N;1;N;Y;;N;2;;;;HFS
TF_TradeReceiv_2;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_TradeReceiv_2;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_TradeReceiv_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_TradeReceiv_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_TradeReceiv_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_TradeReceiv_3;Y;1;N;N;;N;1;;;;
TF_TradeReceiv_3;OPE;N;1;N;N;;Y;2;;;;Opening
TF_TradeReceiv_3;CLO;N;0;N;Y;;N;1;;;;Closing
TF_TradeReceiv_3;CLO2;N;0;;;;;;;;;
TF_TradeReceiv_3;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_TradeReceiv_3;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_TradeReceiv_3;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_TradeReceiv_3;COL;N;1;N;Y;;N;2;;;;Collection
TF_TradeReceiv_3;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_TradeReceiv_3;REL;N;1;N;Y;;N;2;;;;Release
TF_TradeReceiv_3;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_TradeReceiv_3;DIC;N;1;N;Y;;N;2;;;;Dividend Cash
TF_TradeReceiv_3;DEL;N;1;N;Y;;N;2;;;;Write off
TF_TradeReceiv_3;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_TradeReceiv_3;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_TradeReceiv_3;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_TradeReceiv_3;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_TradeReceiv_3;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_TradeReceiv_3;HFS;N;1;N;Y;;N;2;;;;HFS
TF_TradeReceiv_3;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_TradeReceiv_3;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_TradeReceiv_3;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_TradeReceiv_3;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_TradeReceiv_3;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Tax_1;Y;1;N;N;;N;1;;;;
TF_Tax_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Tax_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Tax_1;CLO2;N;0;;;;;;;;;
TF_Tax_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Tax_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Tax_1;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_Tax_1;ADD;N;1;N;Y;;N;2;;;;Addition
TF_Tax_1;PAY;N;1;N;Y;;N;2;;;;Payment
TF_Tax_1;COL;N;1;N;Y;;N;2;;;;Collection
TF_Tax_1;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_Tax_1;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_Tax_1;DEL;N;1;N;Y;;N;2;;;;Write off
TF_Tax_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Tax_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Tax_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Tax_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_Tax_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Tax_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_Tax_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_Tax_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Tax_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Tax_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_OthNonFinAsset_1;Y;1;N;N;;N;1;;;;
TF_OthNonFinAsset_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_OthNonFinAsset_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_OthNonFinAsset_1;CLO2;N;0;;;;;;;;;
TF_OthNonFinAsset_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_OthNonFinAsset_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_OthNonFinAsset_1;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_OthNonFinAsset_1;ADD;N;1;N;Y;;N;2;;;;Addition
TF_OthNonFinAsset_1;CON;N;1;N;Y;;N;2;;;;Contribution
TF_OthNonFinAsset_1;COL;N;1;N;Y;;N;2;;;;Collection
TF_OthNonFinAsset_1;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_OthNonFinAsset_1;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_OthNonFinAsset_1;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_OthNonFinAsset_1;DEL;N;1;N;Y;;N;2;;;;Write off
TF_OthNonFinAsset_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_OthNonFinAsset_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_OthNonFinAsset_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_OthNonFinAsset_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_OthNonFinAsset_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_OthNonFinAsset_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_OthNonFinAsset_1;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_OthNonFinAsset_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_OthNonFinAsset_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_OthNonFinAsset_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_OthNonFinAsset_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_OthNonFinAsset_2;Y;1;N;N;;N;1;;;;
TF_OthNonFinAsset_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_OthNonFinAsset_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_OthNonFinAsset_2;CLO2;N;0;;;;;;;;;
TF_OthNonFinAsset_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_OthNonFinAsset_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_OthNonFinAsset_2;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_OthNonFinAsset_2;ADD;N;1;N;Y;;N;2;;;;Addition
TF_OthNonFinAsset_2;CON;N;1;N;Y;;N;2;;;;Contribution
TF_OthNonFinAsset_2;COL;N;1;N;Y;;N;2;;;;Collection
TF_OthNonFinAsset_2;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_OthNonFinAsset_2;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_OthNonFinAsset_2;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_OthNonFinAsset_2;DEL;N;1;N;Y;;N;2;;;;Write off
TF_OthNonFinAsset_2;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_OthNonFinAsset_2;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_OthNonFinAsset_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_OthNonFinAsset_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_OthNonFinAsset_2;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_OthNonFinAsset_2;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_OthNonFinAsset_2;HFS;N;1;N;Y;;N;2;;;;HFS
TF_OthNonFinAsset_2;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_OthNonFinAsset_2;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_OthNonFinAsset_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_OthNonFinAsset_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_OthNonFinAsset_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_OthNonFinAsset_3;Y;1;N;N;;N;1;;;;
TF_OthNonFinAsset_3;OPE;N;1;N;N;;Y;2;;;;Opening
TF_OthNonFinAsset_3;CLO;N;0;N;Y;;N;1;;;;Closing
TF_OthNonFinAsset_3;CLO2;N;0;;;;;;;;;
TF_OthNonFinAsset_3;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_OthNonFinAsset_3;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_OthNonFinAsset_3;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_OthNonFinAsset_3;ADD;N;1;N;Y;;N;2;;;;Addition
TF_OthNonFinAsset_3;CON;N;1;N;Y;;N;2;;;;Contribution
TF_OthNonFinAsset_3;COL;N;1;N;Y;;N;2;;;;Collection
TF_OthNonFinAsset_3;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_OthNonFinAsset_3;REL;N;1;N;Y;;N;2;;;;Release
TF_OthNonFinAsset_3;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_OthNonFinAsset_3;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_OthNonFinAsset_3;DEL;N;1;N;Y;;N;2;;;;Write off
TF_OthNonFinAsset_3;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_OthNonFinAsset_3;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_OthNonFinAsset_3;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_OthNonFinAsset_3;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_OthNonFinAsset_3;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_OthNonFinAsset_3;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_OthNonFinAsset_3;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_OthNonFinAsset_3;HFS;N;1;N;Y;;N;2;;;;HFS
TF_OthNonFinAsset_3;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_OthNonFinAsset_3;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_OthNonFinAsset_3;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_OthNonFinAsset_3;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_OthNonFinAsset_3;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_OthNonFinAsset_4;Y;1;N;N;;N;1;;;;
TF_OthNonFinAsset_4;OPE;N;1;N;N;;Y;2;;;;Opening
TF_OthNonFinAsset_4;CLO;N;0;N;Y;;N;1;;;;Closing
TF_OthNonFinAsset_4;CLO2;N;0;;;;;;;;;
TF_OthNonFinAsset_4;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_OthNonFinAsset_4;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_OthNonFinAsset_4;ADD;N;1;N;Y;;N;2;;;;Addition
TF_OthNonFinAsset_4;CON;N;1;N;Y;;N;2;;;;Contribution
TF_OthNonFinAsset_4;COL;N;1;N;Y;;N;2;;;;Collection
TF_OthNonFinAsset_4;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_OthNonFinAsset_4;REL;N;1;N;Y;;N;2;;;;Release
TF_OthNonFinAsset_4;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_OthNonFinAsset_4;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_OthNonFinAsset_4;DEL;N;1;N;Y;;N;2;;;;Write off
TF_OthNonFinAsset_4;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_OthNonFinAsset_4;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_OthNonFinAsset_4;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_OthNonFinAsset_4;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_OthNonFinAsset_4;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_OthNonFinAsset_4;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_OthNonFinAsset_4;HFS;N;1;N;Y;;N;2;;;;HFS
TF_OthNonFinAsset_4;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_OthNonFinAsset_4;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_OthNonFinAsset_4;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_OthNonFinAsset_4;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Cash_1;Y;1;N;N;;N;1;;;;
TF_Cash_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Cash_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Cash_1;CLO2;N;0;;;;;;;;;
TF_Cash_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Cash_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Cash_1;CON;N;1;N;Y;;N;2;;;;Contribution
TF_Cash_1;PAY;N;1;N;Y;;N;2;;;;Payment
TF_Cash_1;COL;N;1;N;Y;;N;2;;;;Collection
TF_Cash_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Cash_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Cash_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Cash_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_Cash_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Cash_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_Cash_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Cash_1;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_Cash_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_Cash_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Cash_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Cash_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Cash_2;Y;1;N;N;;N;1;;;;
TF_Cash_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Cash_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Cash_2;CLO2;N;0;;;;;;;;;
TF_Cash_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Cash_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Cash_2;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Cash_2;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_Cash_2;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_Cash_2;DEL;N;1;N;Y;;N;2;;;;Write off
TF_Cash_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Cash_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Cash_2;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_Cash_2;HFS;N;1;N;Y;;N;2;;;;HFS
TF_Cash_2;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_Cash_2;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_Cash_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Cash_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Cash_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Capital_1;Y;1;N;N;;N;1;;;;
TF_Capital_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Capital_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Capital_1;CLO2;N;0;;;;;;;;;
TF_Capital_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Capital_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Capital_1;CON;N;1;N;Y;;N;2;;;;Contribution
TF_Capital_1;PAY;N;1;N;Y;;N;2;;;;Payment
TF_Capital_1;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Capital_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Capital_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Capital_1;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_Capital_1;COL;N;1;N;Y;;N;2;;;;Collection
TF_Capital_1;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_Capital_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Capital_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Capital_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Capital_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Capital_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Capital_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Capital_2;Y;1;N;N;;N;1;;;;
TF_Capital_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Capital_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Capital_2;CLO2;N;0;;;;;;;;;
TF_Capital_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Capital_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Capital_2;CON;N;1;N;Y;;N;2;;;;Contribution
TF_Capital_2;PAY;N;1;N;Y;;N;2;;;;Payment
TF_Capital_2;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Capital_2;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Capital_2;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Capital_2;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_Capital_2;COL;N;1;N;Y;;N;2;;;;Collection
TF_Capital_2;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Capital_2;REL;N;1;N;Y;;N;2;;;;Release
TF_Capital_2;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_Capital_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Capital_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Capital_2;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Capital_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Capital_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Capital_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Capital_3;Y;1;N;N;;N;1;;;;
TF_Capital_3;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Capital_3;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Capital_3;CLO2;N;0;;;;;;;;;
TF_Capital_3;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Capital_3;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Capital_3;CON;N;1;N;Y;;N;2;;;;Contribution
TF_Capital_3;PAY;N;1;N;Y;;N;2;;;;Payment
TF_Capital_3;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Capital_3;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Capital_3;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Capital_3;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_Capital_3;COL;N;1;N;Y;;N;2;;;;Collection
TF_Capital_3;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Capital_3;REL;N;1;N;Y;;N;2;;;;Release
TF_Capital_3;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_Capital_3;DEL;N;1;N;Y;;N;2;;;;Write off
TF_Capital_3;CTAI;N;1;N;Y;;N;2;;;;CTA Input
TF_Capital_3;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Capital_3;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Capital_3;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Capital_3;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Capital_3;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Capital_3;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Reserve_1;Y;1;N;N;;N;1;;;;
TF_Reserve_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Reserve_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Reserve_1;CLO2;N;0;;;;;;;;;
TF_Reserve_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Reserve_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Reserve_1;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Reserve_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Reserve_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Reserve_1;REL;N;1;N;Y;;N;2;;;;Release
TF_Reserve_1;PAY;N;1;N;Y;;N;2;;;;Payment
TF_Reserve_1;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Reserve_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Reserve_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Reserve_1;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_Reserve_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Reserve_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Reserve_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Reserve_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Reserve_2;Y;1;N;N;;N;1;;;;
TF_Reserve_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Reserve_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Reserve_2;CLO2;N;0;;;;;;;;;
TF_Reserve_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Reserve_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Reserve_2;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Reserve_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Reserve_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Reserve_2;REL;N;1;N;Y;;N;2;;;;Release
TF_Reserve_2;RECY;N;1;N;Y;;N;2;;;;Recycling
TF_Reserve_2;PAY;N;1;N;Y;;N;2;;;;Payment
TF_Reserve_2;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Reserve_2;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Reserve_2;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Reserve_2;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_Reserve_2;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Reserve_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Reserve_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Reserve_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Reserve_3;Y;1;N;N;;N;1;;;;
TF_Reserve_3;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Reserve_3;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Reserve_3;CLO2;N;0;;;;;;;;;
TF_Reserve_3;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Reserve_3;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Reserve_3;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Reserve_3;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Reserve_3;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Reserve_3;REL;N;1;N;Y;;N;2;;;;Release
TF_Reserve_3;PAY;N;1;N;Y;;N;2;;;;Payment
TF_Reserve_3;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Reserve_3;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Reserve_3;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Reserve_3;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_Reserve_3;RECY;N;1;N;Y;;N;2;;;;Recycling
TF_Reserve_3;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Reserve_3;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Reserve_3;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Reserve_3;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Reserve_4;Y;1;N;N;;N;1;;;;
TF_Reserve_4;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Reserve_4;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Reserve_4;CLO2;N;0;;;;;;;;;
TF_Reserve_4;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Reserve_4;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Reserve_4;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Reserve_4;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Reserve_4;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Reserve_4;REL;N;1;N;Y;;N;2;;;;Release
TF_Reserve_4;PAY;N;1;N;Y;;N;2;;;;Payment
TF_Reserve_4;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Reserve_4;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Reserve_4;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Reserve_4;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_Reserve_4;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Reserve_4;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Reserve_4;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Reserve_4;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Reserve_5;Y;1;N;N;;N;1;;;;
TF_Reserve_5;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Reserve_5;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Reserve_5;CLO2;N;0;;;;;;;;;
TF_Reserve_5;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_Reserve_5;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_Reserve_5;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_Reserve_5;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Reserve_5;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Reserve_5;COL;N;1;N;Y;;N;2;;;;Collection
TF_Reserve_5;REL;N;1;N;Y;;N;2;;;;Release
TF_Reserve_5;PAY;N;1;N;Y;;N;2;;;;Payment
TF_Reserve_5;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_Reserve_5;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_Reserve_5;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Reserve_5;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_Reserve_5;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Reserve_5;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Reserve_5;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Reserve_5;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_RetEarn_1;Y;1;N;N;;N;1;;;;
TF_RetEarn_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_RetEarn_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_RetEarn_1;CLO2;N;0;;;;;;;;;
TF_RetEarn_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_RetEarn_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_RetEarn_1;PAY;N;1;N;Y;;N;2;;;;Payment
TF_RetEarn_1;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_RetEarn_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_RetEarn_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_RetEarn_1;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_RetEarn_1;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_RetEarn_1;REL;N;1;N;Y;;N;2;;;;Release
TF_RetEarn_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_RetEarn_1;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_RetEarn_1;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_RetEarn_1;DEL;N;1;N;Y;;N;2;;;;Write off
TF_RetEarn_1;CTAI;N;1;N;Y;;N;2;;;;CTA Input
TF_RetEarn_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_RetEarn_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_RetEarn_1;APP;N;1;N;Y;;Y;2;;;;Appropriation of Net result
TF_RetEarn_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_RetEarn_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_RetEarn_1;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_RetEarn_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_RetEarn_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_RetEarn_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_RetEarn_2;Y;1;N;N;;N;1;;;;
TF_RetEarn_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_RetEarn_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_RetEarn_2;CLO2;N;0;;;;;;;;;
TF_RetEarn_2;RES;N;1;N;Y;;N;2;;;;Net Result for the Year
TF_RetEarn_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_RetEarn_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_RetEarn_2;APP;N;1;N;Y;;Y;2;;;;Appropriation of Net result
TF_RetEarn_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_RetEarn_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_RetEarn_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_TrReserve_1;Y;1;N;N;;N;1;;;;
TF_TrReserve_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_TrReserve_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_TrReserve_1;CLO2;N;0;;;;;;;;;
TF_TrReserve_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_TrReserve_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_TrReserve_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_TrReserve_1;APP;N;1;N;Y;;Y;2;;;;Appropriation of Net result
TF_TrReserve_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_TrReserve_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_TrReserve_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_TrReserve_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_TrReserve_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TrReserve_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_TOT;TF_FinaLiab_1;Y;1;N;N;;N;1;;;;
TF_FinaLiab_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_1;CLO2;N;0;;;;;;;;;
TF_FinaLiab_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_1;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinaLiab_1;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_1;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinaLiab_1;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinaLiab_1;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinaLiab_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinaLiab_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_1;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_1;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_2;Y;1;N;N;;N;1;;;;
TF_FinaLiab_2;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_2;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_2;CLO2;N;0;;;;;;;;;
TF_FinaLiab_2;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_2;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_2;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_2;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinaLiab_2;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinaLiab_2;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_2;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_2;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_2;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_2;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_2;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinaLiab_2;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_2;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_2;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_2;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_2;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_2;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_3;Y;1;N;N;;N;1;;;;
TF_FinaLiab_3;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_3;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_3;CLO2;N;0;;;;;;;;;
TF_FinaLiab_3;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_3;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_3;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_3;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_3;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_3;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinaLiab_3;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_3;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_3;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_3;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_3;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_3;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinaLiab_3;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_3;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_3;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_3;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_3;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_3;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_4;Y;1;N;N;;N;1;;;;
TF_FinaLiab_4;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_4;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_4;CLO2;N;0;;;;;;;;;
TF_FinaLiab_4;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_4;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_4;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinaLiab_4;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_4;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_4;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinaLiab_4;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinaLiab_4;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_4;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_4;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_4;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_4;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_4;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinaLiab_4;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_4;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_4;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_4;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_4;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_4;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_5;Y;1;N;N;;N;1;;;;
TF_FinaLiab_5;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_5;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_5;CLO2;N;0;;;;;;;;;
TF_FinaLiab_5;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinaLiab_5;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_5;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_5;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_5;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_5;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinaLiab_5;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinaLiab_5;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_5;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_5;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_5;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_5;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_5;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinaLiab_5;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_5;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_5;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_5;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_5;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_5;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_6;Y;1;N;N;;N;1;;;;
TF_FinaLiab_6;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_6;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_6;CLO2;N;0;;;;;;;;;
TF_FinaLiab_6;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_6;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_6;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_6;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinaLiab_6;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_6;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_6;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_6;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_6;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_6;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_6;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_6;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinaLiab_6;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_6;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_6;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_6;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_6;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_6;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_7;Y;1;N;N;;N;1;;;;
TF_FinaLiab_7;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_7;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_7;CLO2;N;0;;;;;;;;;
TF_FinaLiab_7;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_7;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_7;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_7;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_7;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_7;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_7;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_7;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_7;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_7;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinaLiab_7;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_7;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_7;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_7;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_7;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_8;Y;1;N;N;;N;1;;;;
TF_FinaLiab_8;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_8;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_8;CLO2;N;0;;;;;;;;;
TF_FinaLiab_8;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_8;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_8;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_8;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_8;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_8;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_8;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_8;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_8;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_8;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_8;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinaLiab_8;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_8;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_8;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_8;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_8;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_9;Y;1;N;N;;N;1;;;;
TF_FinaLiab_9;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_9;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_9;CLO2;N;0;;;;;;;;;
TF_FinaLiab_9;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_9;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_9;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_9;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_9;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_9;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_9;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_9;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_9;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_9;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_9;ERR;N;1;N;Y;;Y;1;;;;Error
TF_FinaLiab_9;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_9;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_9;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_9;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_9;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_9;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_10;Y;1;N;N;;N;1;;;;
TF_FinaLiab_10;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_10;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_10;CLO2;N;0;;;;;;;;;
TF_FinaLiab_10;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_10;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_10;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_10;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_10;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_10;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_10;RECY;N;1;N;Y;;N;2;;;;Recycling
TF_FinaLiab_10;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinaLiab_10;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_10;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_10;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_10;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_10;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_10;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_10;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_10;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_10;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_10;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_10;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_11;Y;1;N;N;;N;1;;;;
TF_FinaLiab_11;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_11;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_11;CLO2;N;0;;;;;;;;;
TF_FinaLiab_11;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_11;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_11;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_11;VAT;N;1;N;Y;;N;2;;;;VAT
TF_FinaLiab_11;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinaLiab_11;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_11;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_11;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_11;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_11;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_11;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_11;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_11;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_11;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_11;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_11;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_11;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_11;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_12;Y;1;N;N;;N;1;;;;
TF_FinaLiab_12;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_12;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_12;CLO2;N;0;;;;;;;;;
TF_FinaLiab_12;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_12;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_12;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_12;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_12;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinaLiab_12;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_12;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_12;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_12;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_12;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_12;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_12;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_12;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_12;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_12;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_12;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_12;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_12;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_13;Y;1;N;N;;N;1;;;;
TF_FinaLiab_13;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_13;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_13;CLO2;N;0;;;;;;;;;
TF_FinaLiab_13;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_13;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_13;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_13;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_13;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinaLiab_13;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_13;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_13;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_13;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_13;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_13;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_13;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_13;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_13;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_13;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_13;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_13;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_14;Y;1;N;N;;N;1;;;;
TF_FinaLiab_14;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_14;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_14;CLO2;N;0;;;;;;;;;
TF_FinaLiab_14;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_14;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_14;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_14;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_14;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_14;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_14;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_14;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_14;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_14;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_14;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_15;Y;1;N;N;;N;1;;;;
TF_FinaLiab_15;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_15;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_15;CLO2;N;0;;;;;;;;;
TF_FinaLiab_15;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_15;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_15;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_15;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_15;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_15;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_15;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_FinaLiab_15;DIC;N;1;N;Y;;N;2;;;;Dividend Cash
TF_FinaLiab_15;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_15;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_15;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_15;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_15;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_15;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_15;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_15;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_15;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_15;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_15;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_16;Y;1;N;N;;N;1;;;;
TF_FinaLiab_16;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_16;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_16;CLO2;N;0;;;;;;;;;
TF_FinaLiab_16;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_16;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_16;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_16;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinaLiab_16;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_16;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinaLiab_16;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinaLiab_16;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinaLiab_16;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_16;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_16;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_16;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_16;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_16;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_16;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_16;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_16;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_16;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_16;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_17;Y;1;N;N;;N;1;;;;
TF_FinaLiab_17;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_17;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_17;CLO2;N;0;;;;;;;;;
TF_FinaLiab_17;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_17;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_17;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_17;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_17;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinaLiab_17;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinaLiab_17;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_17;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_17;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_17;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_17;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_17;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_17;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_17;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_17;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_17;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_17;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_18;Y;1;N;N;;N;1;;;;
TF_FinaLiab_18;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_18;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_18;CLO2;N;0;;;;;;;;;
TF_FinaLiab_18;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_18;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_18;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_18;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_18;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_18;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_18;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinaLiab_18;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_18;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_18;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_18;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_18;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_18;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_18;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_18;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_18;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_18;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_18;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_19;Y;1;N;N;;N;1;;;;
TF_FinaLiab_19;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_19;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_19;CLO2;N;0;;;;;;;;;
TF_FinaLiab_19;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_19;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_19;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_19;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinaLiab_19;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_19;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_19;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinaLiab_19;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinaLiab_19;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_19;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_19;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_19;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_19;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_19;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_19;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_19;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_19;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_19;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_19;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_20;Y;1;N;N;;N;1;;;;
TF_FinaLiab_20;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_20;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_20;CLO2;N;0;;;;;;;;;
TF_FinaLiab_20;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_20;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_20;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_20;CON;N;1;N;Y;;N;2;;;;Contribution
TF_FinaLiab_20;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_20;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_20;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_FinaLiab_20;CAP;N;1;N;Y;;N;2;;;;Capitalization
TF_FinaLiab_20;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_20;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_20;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_20;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_20;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_20;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_20;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_20;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_20;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_20;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_20;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_21;Y;1;N;N;;N;1;;;;
TF_FinaLiab_21;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_21;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_21;CLO2;N;0;;;;;;;;;
TF_FinaLiab_21;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_21;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_21;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_21;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_21;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinaLiab_21;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_21;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_21;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_21;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_21;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_21;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_21;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_21;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_21;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_21;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_21;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_21;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_21;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_22;Y;1;N;N;;N;1;;;;
TF_FinaLiab_22;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_22;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_22;CLO2;N;0;;;;;;;;;
TF_FinaLiab_22;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_22;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_22;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_22;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_22;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_22;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_22;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_22;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_22;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_22;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_22;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_22;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_22;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_22;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_22;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_23;Y;1;N;N;;N;1;;;;
TF_FinaLiab_23;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_23;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_23;CLO2;N;0;;;;;;;;;
TF_FinaLiab_23;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_23;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_23;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_23;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_23;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_23;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_23;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_23;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_23;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_23;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_23;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_23;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_23;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_23;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_23;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_23;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_24;Y;1;N;N;;N;1;;;;
TF_FinaLiab_24;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_24;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_24;CLO2;N;0;;;;;;;;;
TF_FinaLiab_24;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_24;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_24;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_24;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_24;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_24;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_24;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_24;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_24;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_24;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_24;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_24;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_24;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_24;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_24;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_24;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_24;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_FinaLiab_25;Y;1;N;N;;N;1;;;;
TF_FinaLiab_25;OPE;N;1;N;N;;Y;2;;;;Opening
TF_FinaLiab_25;CLO;N;0;N;Y;;N;1;;;;Closing
TF_FinaLiab_25;CLO2;N;0;;;;;;;;;
TF_FinaLiab_25;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_FinaLiab_25;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_FinaLiab_25;PAY;N;1;N;Y;;N;2;;;;Payment
TF_FinaLiab_25;COL;N;1;N;Y;;N;2;;;;Collection
TF_FinaLiab_25;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_FinaLiab_25;REL;N;1;N;Y;;N;2;;;;Release
TF_FinaLiab_25;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_FinaLiab_25;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_FinaLiab_25;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_FinaLiab_25;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_FinaLiab_25;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_FinaLiab_25;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_FinaLiab_25;MOV;N;1;N;Y;;N;2;;;;Total Movements
TF_FinaLiab_25;HFS;N;1;N;Y;;N;2;;;;HFS
TF_FinaLiab_25;FXPL;N;1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
TF_FinaLiab_25;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_FinaLiab_25;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_FinaLiab_25;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_FinaLiab_25;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_ConR_1;Y;1;N;N;;N;1;;;;
TF_ConR_1;OPE;N;1;N;N;;Y;2;;;;Opening
TF_ConR_1;CLO;N;0;N;Y;;N;1;;;;Closing
TF_ConR_1;CLO2;N;0;;;;;;;;;
TF_ConR_1;DISC;N;1;N;Y;;N;2;;;;Discounting
TF_ConR_1;CHG;N;1;N;Y;;N;2;;;;Change of Control
TF_ConR_1;PAY;N;1;N;Y;;N;2;;;;Payment
TF_ConR_1;DIV;N;1;N;Y;;N;2;;;;Dividend
TF_ConR_1;TRA;N;1;N;Y;;N;2;;;;Transfer
TF_ConR_1;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_ConR_1;FVC;N;1;N;Y;;N;2;;;;Fair value change
TF_ConR_1;ACC;N;1;N;Y;;N;2;;;;Accrual
TF_ConR_1;ADD;N;1;N;Y;;N;2;;;;Addition
TF_ConR_1;CON;N;1;N;Y;;N;2;;;;Contribution
TF_ConR_1;COL;N;1;N;Y;;N;2;;;;Collection
TF_ConR_1;REL;N;1;N;Y;;N;2;;;;Release
TF_ConR_1;CONV;N;1;N;Y;;N;2;;;;Conversion
TF_ConR_1;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
TF_ConR_1;DEL;N;1;N;Y;;N;2;;;;Write off
TF_ConR_1;DISP;N;1;N;Y;;N;2;;;;Disposal
TF_ConR_1;HFS;N;1;N;Y;;N;2;;;;HFS
TF_ConR_1;CTAI;N;1;N;Y;;N;2;;;;CTA Input
TF_ConR_1;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_ConR_1;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_ConR_1;ERR;N;1;N;Y;;Y;1;;;;Error
TF_ConR_1;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_ConR_1;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_ConR_1;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_ConR_1;IMP;N;1;N;Y;;N;2;;;;Impairment
TF_TOT;TF_Ovr;Y;1;N;N;;N;1;;;;
TF_Ovr;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Ovr;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Ovr;CLO2;N;0;;;;;;;;;
TF_Ovr;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Ovr;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Ovr;FX_OVR;N;1;N;Y;;Y;2;;;;Override
TF_Ovr;FX_OVR_NC;N;1;N;Y;;Y;2;;;;Override Non Cash
TF_Ovr;FX_OVRP;N;1;N;Y;;Y;2;;;;Override Plug
TF_Ovr;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Ovr;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Frx;Y;1;N;N;;N;1;;;;
TF_Frx;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Frx;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Frx;CLO2;N;0;;;;;;;;;
TF_Frx;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_Frx;ERR;N;1;N;Y;;Y;1;;;;Error
TF_Frx;IN;N;1;N;Y;;N;2;;;;IN - Business combinations
TF_Frx;OUT;N;1;N;Y;;N;2;;;;OUT - Deconsol
TF_Frx;REC;N;1;N;Y;;N;2;;;;Reclassification
TF_Frx;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Frx;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Frx;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_TOT;TF_Historical;Y;1;N;N;;N;1;;;;
TF_Historical;OPE;N;1;N;N;;Y;2;;;;Opening
TF_Historical;CLO;N;0;N;Y;;N;1;;;;Closing
TF_Historical;CLO2;N;0;;;;;;;;;
TF_Historical;HFS;N;1;N;Y;;N;2;;;;HFS
TF_Historical;VAR;N;1;N;Y;;Y;2;;;;Scope Variation
TF_Historical;EXT;N;1;N;Y;;Y;2;;;;Scope Variation - Exit Method
TF_Historical;ENT;N;1;N;Y;;Y;2;;;;Scope Variation - Entry Method
TF_Historical;CTA;N;1;N;Y;;N;2;;;;Fx CTA
TF_TOT;HFS_Input;Y;1;N;N;;N;1;;;;Input movements for AHS
HFS_Input;OPE;N;1;N;N;;Y;2;;;;Opening
HFS_Input;ADD;N;1;N;Y;;N;2;;;;Addition
HFS_Input;DISP;N;1;N;Y;;N;2;;;;Disposal
HFS_Input;HFS;N;1;N;Y;;N;2;;;;HFS
HFS_Input;DEL;N;1;N;Y;;N;2;;;;Write off
HFS_Input;IMP;N;1;N;Y;;N;2;;;;Impairment
HFS_Input;IMPR;N;1;N;Y;;N;2;;;;Impairment reversal
HFS_Input;TRA;N;1;N;Y;;N;2;;;;Transfer
HFS_Input;IN1;N;1;N;Y;;N;2;;;;IN - Business combinations 1
HFS_Input;OUT1;N;1;N;Y;;N;2;;;;OUT - Deconsol 1
HFS_Input;REC;N;1;N;Y;;N;2;;;;Reclassification
HFS_Input;CTAI;N;1;N;Y;;N;2;;;;CTA Input
HFS_Input;CLO2;N;0;;;;;;;;;
HFS_Input;CLO;N;0;N;Y;;N;1;;;;Closing
#root;CF;Y;1;N;N;;N;1;;;;Cash Flow
CF;CFVAR;Y;1;N;N;;N;1;;;;Cash Flow variance
CFVAR;CLO;N;1;N;Y;;N;1;;;;Closing
CFVAR;CLO2;N;0;;;;;;;;;
CFVAR;OPE;N;-1;N;N;;Y;2;;;;Opening
CFVAR;TRA;N;-1;N;Y;;N;2;;;;Transfer
CFVAR;DISC;N;-1;N;Y;;N;2;;;;Discounting
CFVAR;DEL;N;-1;N;Y;;N;2;;;;Write off
CFVAR;VAT;N;-1;N;Y;;N;2;;;;VAT
CFVAR;IN;N;-1;N;Y;;N;2;;;;IN - Business combinations
CFVAR;OUT;N;-1;N;Y;;N;2;;;;OUT - Deconsol
CFVAR;VAR;N;-1;N;Y;;Y;2;;;;Scope Variation
CFVAR;HFS;N;-1;N;Y;;N;2;;;;HFS
CFVAR;REC;N;-1;N;Y;;N;2;;;;Reclassification
CFVAR;OTH;N;-1;N;Y;;N;2;;;;Other
CFVAR;CTA;N;-1;N;Y;;N;2;;;;Fx CTA
CFVAR;FXPL;N;-1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
CF;CFVAR2;Y;1;N;N;;N;1;;;;Cash Flow variance
CFVAR2;CLO;N;1;N;Y;;N;1;;;;Closing
CFVAR2;CLO2;N;0;;;;;;;;;
CFVAR2;OPE;N;-1;N;N;;Y;2;;;;Opening
CFVAR2;TRA;N;-1;N;Y;;N;2;;;;Transfer
CFVAR2;DISC;N;-1;N;Y;;N;2;;;;Discounting
CFVAR2;DEL;N;-1;N;Y;;N;2;;;;Write off
CFVAR2;VAT;N;-1;N;Y;;N;2;;;;VAT
CFVAR2;IN;N;-1;N;Y;;N;2;;;;IN - Business combinations
CFVAR2;OUT;N;-1;N;Y;;N;2;;;;OUT - Deconsol
CFVAR2;VAR;N;-1;N;Y;;Y;2;;;;Scope Variation
CFVAR2;HFS;N;-1;N;Y;;N;2;;;;HFS
CFVAR2;REC;N;-1;N;Y;;N;2;;;;Reclassification
CFVAR2;OTH;N;-1;N;Y;;N;2;;;;Other
CFVAR2;CTA;N;-1;N;Y;;N;2;;;;Fx CTA
CFVAR2;FXPL;N;-1;N;Y;;N;2;;;;Fx PL (realized flow & unrealized flow)
CFVAR2;EXT;N;-1;N;Y;;Y;2;;;;Scope Variation - Exit Method
CFVAR2;ENT;N;-1;N;Y;;Y;2;;;;Scope Variation - Entry Method
#root;Custom_tops_C1;Y;0;N;N;;N;1;;;;Custom top members C1
Custom_tops_C1;PR_01_05;Y;0;N;N;;N;1;;;;Voice and SMS
PR_01_05;PR_01;N;1;N;N;;N;1;;;;Voice
PR_01_05;PR_05;N;1;N;N;;N;1;;;;SMS
Custom_tops_C1;PR_01_02_04;Y;0;N;N;;N;1;;;;Voice / Data / Messaging
PR_01_02_04;PR_01;N;1;N;N;;N;1;;;;Voice
PR_01_02_04;PR_02;N;1;N;N;;N;1;;;;Data
PR_01_02_04;PR_04;N;1;N;N;;N;1;;;;Messaging
Custom_tops_C1;PR_01_04;Y;0;N;N;;N;1;;;;Voice / Messaging
PR_01_04;PR_01;N;1;N;N;;N;1;;;;Voice
PR_01_04;PR_04;N;1;N;N;;N;1;;;;Messaging
Custom_tops_C1;PR_02_04;Y;0;N;N;;N;1;;;;Data / Messaging
PR_02_04;PR_02;N;1;N;N;;N;1;;;;Data
PR_02_04;PR_04;N;1;N;N;;N;1;;;;Messaging
Custom_tops_C1;MobileDevice;Y;0;N;N;;N;1;;;;Mobile Devices All
MobileDevice;DE_10;N;1;N;N;;N;1;;;;All other handheld devices
MobileDevice;DE_09;N;1;N;N;;N;1;;;;Mobile Broadband
MobileDevice;DE_06;N;1;N;N;;N;1;;;;Accessories
MobileDevice;DE_07;N;1;N;N;;N;1;;;;Other devices
Custom_tops_C1;FixedDevice;Y;0;N;N;;N;1;;;;Fixed Devices All
FixedDevice;DE_05;N;1;N;N;;N;1;;;;Modem / Router / Switches for sales
FixedDevice;DE_06;N;1;N;N;;N;1;;;;Accessories
FixedDevice;DE_08;N;1;N;N;;N;1;;;;IPBX/PABX/IPABX/IAD
FixedDevice;DE_07;N;1;N;N;;N;1;;;;Other devices
#root;Cash_TOT;Y;0;N;N;;N;1;;;;Cash Flow variance
Cash_TOT;ADD;N;1;N;Y;;N;2;;;;Addition
Cash_TOT;PAY;N;1;N;Y;;N;2;;;;Payment
Cash_TOT;COL;N;1;N;Y;;N;2;;;;Collection
Cash_TOT;DISP;N;1;N;Y;;N;2;;;;Disposal

!Hierarchies=VarLob
'Parent;Child;IsPrimary;AggregationWeight;SwitchSignForFlow;SwitchTypeForFlow;SecurityClass;IsCalculated;SubmissionGroup;UserDefined1;UserDefined2;UserDefined3;Alias=English
#root;[None];Y;1;N;N;;N;1;;;;None
#root;TotC2;Y;0;N;N;;N;1;;;;Total Custom2
TotC2;VD000;Y;1;N;N;;N;1;;;;Total Accumulated Variations Details
VD000;VD101;Y;1;N;N;;N;1;;;;Purchase Cost
VD000;VD100;Y;1;N;N;;N;1;;;;Total Accumulated Variations
VD100;VD102;Y;1;N;N;;N;1;;;;Accumulated amortization
VD100;VD103;Y;1;N;N;;N;1;;;;Accumulated depreciation
VD100;VD104;Y;1;N;N;;N;1;;;;Accumulated impairment
VD000;VD105;Y;1;N;N;;N;1;;;;Fair Value Excess
TotC2;LOB_000;Y;1;N;N;;N;1;;;;Lines of Business
LOB_000;[None];N;1;N;N;;N;1;;;;None
LOB_000;LOB;Y;1;N;N;;N;1;;;;LOB
LOB;LB_01;Y;1;N;N;;N;1;;;;Fixed Overall
LB_01;LB_02;Y;1;N;N;;N;1;;;;Fixed - Standalone
LB_01;LB_108;Y;1;N;N;;N;1;;;;xDSL
LB_01;LB_109;Y;1;N;N;;N;1;;;;FTTx
LB_01;LB_110;Y;1;N;N;;N;1;;;;Other Fixed
LB_01;LB_09;Y;1;N;N;;N;1;;;;Fixed - FMC
LOB;LB_03;Y;1;N;N;;N;1;;;;Mobile Overall
LB_03;LB_04;Y;1;N;N;;N;1;;;;Mobile - Standalone
LB_03;LB_111;Y;1;N;N;;N;1;;;;2G
LB_03;LB_112;Y;1;N;N;;N;1;;;;3G
LB_03;LB_113;Y;1;N;N;;N;1;;;;LTE
LB_03;LB_114;Y;1;N;N;;N;1;;;;Other Mobile
LB_03;LB_08;Y;1;N;N;;N;1;;;;Mobile - FMC
LOB;LB_05;Y;1;N;N;;N;1;;;;Common - Standalone
LOB;LB_10;Y;1;N;N;;N;1;;;;Common - FMC
LOB;LB_07;Y;0;N;N;;N;1;;;;FMC
LB_07;LB_08;N;1;N;N;;N;1;;;;Mobile - FMC
LB_07;LB_09;N;1;N;N;;N;1;;;;Fixed - FMC
LB_07;LB_10;N;1;N;N;;N;1;;;;Common - FMC
LOB;LB_06;Y;1;N;N;;N;1;;;;Other business
LOB;LB_11;Y;0;N;N;;N;1;;;;Standalone
LB_11;LB_04;N;1;N;N;;N;1;;;;Mobile - Standalone
LB_11;LB_111;N;1;N;N;;N;1;;;;2G
LB_11;LB_112;N;1;N;N;;N;1;;;;3G
LB_11;LB_113;N;1;N;N;;N;1;;;;LTE
LB_11;LB_114;N;1;N;N;;N;1;;;;Other Mobile
LB_11;LB_02;N;1;N;N;;N;1;;;;Fixed - Standalone
LB_11;LB_108;N;1;N;N;;N;1;;;;xDSL
LB_11;LB_109;N;1;N;N;;N;1;;;;FTTx
LB_11;LB_110;N;1;N;N;;N;1;;;;Other Fixed
LB_11;LB_05;N;1;N;N;;N;1;;;;Common - Standalone
TotC2;FIN_TOT;Y;1;N;N;;N;1;;;;Total financial instruments
FIN_TOT;[None];N;0;N;N;;N;1;;;;None
FIN_TOT;FIN_PL;Y;1;N;N;;N;1;;;;Financial instruments through profit&loss
FIN_PL;FIN_PL_FVH;Y;1;N;N;;N;1;;;;Fin instrument through PL, FV hedge
FIN_PL;FIN_PL_CFH;Y;1;N;N;;N;1;;;;Fin instrument through PL, CF hedge
FIN_PL;FIN_PL_NH;Y;1;N;N;;N;1;;;;Fin instrument through PL, non-hedge
FIN_TOT;FIN_E;Y;1;N;N;;N;1;;;;Financial instruments through equity
FIN_E;FIN_E_FVH;Y;1;N;N;;N;1;;;;Fin instrument through equty, FV hedge
FIN_E;FIN_E_CFH;Y;1;N;N;;N;1;;;;Fin instrument through equty, CF hedge
FIN_E;FIN_E_NH;Y;1;N;N;;N;1;;;;Fin instrument through equty, non-hedge
TotC2;TAX_YEARS;Y;1;N;N;;N;1;;;;Tax Years
TAX_YEARS;YR_7B;Y;1;N;N;;N;1;;;;Earlier Years
TAX_YEARS;YR_7;Y;1;N;N;;N;1;;;;Current year -7
TAX_YEARS;YR_6;Y;1;N;N;;N;1;;;;Current year -6
TAX_YEARS;YR_5;Y;1;N;N;;N;1;;;;Current year -5
TAX_YEARS;YR_4;Y;1;N;N;;N;1;;;;Current year -4
TAX_YEARS;YR_3;Y;1;N;N;;N;1;;;;Current year -3
TAX_YEARS;YR_2;Y;1;N;N;;N;1;;;;Current year -2
TAX_YEARS;YR_1;Y;1;N;N;;N;1;;;;Current year -1
TAX_YEARS;YR_0;Y;1;N;N;;N;1;;;;Current year
TotC2;TAX_DIFF;Y;1;N;N;;N;1;;;;Tax permanent differences
TAX_DIFF;P1000;Y;1;N;N;;N;1;;;;Permanently nondeductible items
P1000;P1010;Y;1;N;N;;N;1;;;;Taxes
P1000;P1020;Y;1;N;N;;N;1;;;;Share in the result of subsidiaries
P1000;P1030;Y;1;N;N;;N;1;;;;Losses on sale of subsidiaries
P1000;P1040;Y;1;N;N;;N;1;;;;Interest expenses
P1000;P1050;Y;1;N;N;;N;1;;;;Foreign exchange results
P1000;P1060;Y;1;N;N;;N;1;;;;Other financial expenses
P1000;P1070;Y;1;N;N;;N;1;;;;Fines and penalties
P1000;P1080;Y;1;N;N;;N;1;;;;Meals and entertainment expenses
P1000;P1090;Y;1;N;N;;N;1;;;;Souvenirs/gifts and such
P1000;P1100;Y;1;N;N;;N;1;;;;Part of charitable contributions
P1000;P1110;Y;1;N;N;;N;1;;;;Other business expenses
P1000;P1120;Y;1;N;N;;N;1;;;;Bad debt losses
P1000;P1130;Y;1;N;N;;N;1;;;;Depreciation expenses
P1000;P1140;Y;1;N;N;;N;1;;;;Amortization expenses
P1000;P1150;Y;1;N;N;;N;1;;;;Personnel related expenses
P1000;P1160;Y;1;N;N;;N;1;;;;Other  items
TAX_DIFF;P2000;Y;1;N;N;;N;1;;;;Permanently nontaxable items
P2000;P2010;Y;1;N;N;;N;1;;;;Share in the result of subsidiaries
P2000;P2020;Y;1;N;N;;N;1;;;;Gains on sale of subsidiaries
P2000;P2030;Y;1;N;N;;N;1;;;;Capital gains (not subsidiary related)
P2000;P2040;Y;1;N;N;;N;1;;;;Governments grants/subsidies
P2000;P2050;Y;1;N;N;;N;1;;;;Interest income
P2000;P2060;Y;1;N;N;;N;1;;;;Other items
TAX_DIFF;P3000;Y;1;N;N;;N;1;;;;Other permanent items
P3000;P3010;Y;1;N;N;;N;1;;;;Deductible part of income tax expense (-)
P3000;P3020;Y;1;N;N;;N;1;;;;Tax holidays (-)
P3000;P3030;Y;1;N;N;;N;1;;;;Tax incentives (-)
P3000;P3040;Y;1;N;N;;N;1;;;;Other income for tax not for book purposes (+)
P3000;P3050;Y;1;N;N;;N;1;;;;Other expenses for tax not for book purposes (-)
#root;Custom_tops_C2;Y;0;N;N;;N;1;;;;Custom top members C2
Custom_tops_C2;LB_02_04;Y;0;N;N;;N;1;;;;Mobile and Fixed unspecific
LB_02_04;LB_02;N;1;N;N;;N;1;;;;Fixed - Standalone
LB_02_04;LB_04;N;1;N;N;;N;1;;;;Mobile - Standalone
Custom_tops_C2;LB_01_03_05;Y;0;N;N;;N;1;;;;Fixed/Mobile/FMC/Common
LB_01_03_05;LB_01;N;1;N;N;;N;1;;;;Fixed Overall
LB_01_03_05;LB_03;N;1;N;N;;N;1;;;;Mobile Overall
LB_01_03_05;LB_05;N;1;N;N;;N;1;;;;Common - Standalone

!Hierarchies=MktOvr
'Parent;Child;IsPrimary;AggregationWeight;SwitchSignForFlow;SwitchTypeForFlow;SecurityClass;IsCalculated;SubmissionGroup;UserDefined1;UserDefined2;UserDefined3;Alias=English
#root;[None];Y;1;N;N;;N;1;;;;No Market
#root;TotC3;Y;0;N;N;;N;1;;;;Total Custom3
TotC3;MKD_TOT;Y;1;N;N;;N;1;;;;Total Detail by Market
MKD_TOT;[None];N;1;N;N;;N;1;;;;No Market
MKD_TOT;Market;Y;1;N;N;;N;1;;;;Market
Market;MK_09;Y;1;N;N;;N;1;;;;Own subscribers
MK_09;MK_01;Y;1;N;N;;N;1;;;;Consumer
MK_09;MK_02;Y;1;N;N;;N;1;;;;Business
MK_02;MK_12;Y;1;N;N;;N;1;;;;SOHO/SME
MK_12;MK_13;Y;1;N;N;;N;1;;;;SOHO
MK_12;MK_14;Y;1;N;N;;N;1;;;;SME
MK_02;MK_15;Y;1;N;N;;N;1;;;;LA/KA/B2G
MK_15;MK_16;Y;1;N;N;;N;1;;;;LA/KA
MK_15;MK_17;Y;1;N;N;;N;1;;;;B2G
Market;MK_03;Y;1;N;N;;N;1;;;;Wholesale
MK_03;MK_04;Y;1;N;N;;N;1;;;;Visitors/Guests
MK_03;MK_05;Y;1;N;N;;N;1;;;;MVNO
MK_03;MK_06;Y;1;N;N;;N;1;;;;Carrier to carrier
MK_03;MK_07;Y;1;N;N;;N;1;;;;LLU
MK_03;MK_08;Y;1;N;N;;N;1;;;;Wholesale, unspecific
TotC3;OVERRIDE;Y;0;N;N;;N;1;;;;OVERRIDE
OVERRIDE;[None];N;1;N;N;;N;1;;;;No Market
OVERRIDE;OV_CURR;Y;1;N;N;;N;1;;;;Override Currencies
OV_CURR;USD;Y;1;N;N;;N;1;;;;USD
OV_CURR;RUB;Y;1;N;N;;N;1;;;;RUB
OV_CURR;EUR;Y;1;N;N;;N;1;;;;EUR
OV_CURR;EGP;Y;1;N;N;;N;1;;;;EGP
TotC3;TAX_TYPE;Y;1;N;N;;N;1;;;;Tax type
TAX_TYPE;National;Y;1;N;N;;N;1;;;;National
TAX_TYPE;Subnational;Y;0;N;N;;N;1;;;;Subnational

!Hierarchies=AuditDim
'Parent;Child;IsPrimary;AggregationWeight;SwitchSignForFlow;SwitchTypeForFlow;SecurityClass;IsCalculated;SubmissionGroup;UserDefined1;UserDefined2;UserDefined3;Alias=English
#root;[None];Y;1;N;N;C4_ALL;N;1;;;;Local Input
#root;VIP_TOT;Y;0;N;N;C4_ALL;N;1;;;;Total Audit Details
VIP_TOT;HOLDING_CONS_PPA;Y;1;N;N;C4_ALL;N;1;;;;Holding Consolidation including PPA
HOLDING_CONS_PPA;PPA_ADJ_TOT;Y;1;N;N;C4_ALL;N;1;;;;PPA Adjustments Total
PPA_ADJ_TOT;PPA_ADJ;Y;1;N;N;C4_ALL;N;1;;;;PPA Adjustments
PPA_ADJ_TOT;PPA_ADJ_JL;Y;1;N;N;C4_ALL;N;2;;;;PPA Adjustments Entries
HOLDING_CONS_PPA;HOLDING_TOT;Y;1;N;N;C4_ALL;N;1;;;;Holding Consolidation
HOLDING_TOT;HOLDING_ADJ_TOT;Y;1;N;N;C4_ALL;N;1;;;;Holding Adjustments Total
HOLDING_ADJ_TOT;HOLDING_ADJ1;Y;1;N;N;C4_ALL;N;2;;;;Holding Adjustment 1
HOLDING_ADJ_TOT;HOLDING_ADJ2;Y;1;N;N;C4_ALL;N;2;;;;Holding Adjustment 2
HOLDING_ADJ_TOT;HOLDING_ADJ3;Y;1;N;N;C4_ALL;N;2;;;;Holding Adjustment Prior year restatements
HOLDING_TOT;PARENT_ADJ_TOT;Y;1;N;N;C4_ALL;N;1;;;;Parent Consolidation
PARENT_ADJ_TOT;PARENT_ADJ;Y;1;N;N;C4_ALL;N;1;;;;Parent Adjustments
PARENT_ADJ;PARENT_ADJ1;Y;1;N;N;C4_ALL;N;2;;;;Parent Adjustment 1
PARENT_ADJ;PARENT_ADJ2;Y;1;N;N;C4_ALL;N;2;;;;Parent Adjustment 2
PARENT_ADJ;PARENT_ADJ3;Y;1;N;N;C4_ALL;N;2;;;;Parent Adjustment Prior year restatements
PARENT_ADJ_TOT;ENTITY_IFRS;Y;1;N;N;C4_ALL;N;1;;;;IFRS Consolidation
ENTITY_IFRS;IFRS_ADJ_TOT;Y;1;N;N;C4_ALL;N;2;;;;IFRS Adjustments Total
IFRS_ADJ_TOT;IFRS_ADJ_01;Y;1;N;N;C4_ALL;N;2;;;;Adjustment 1
IFRS_ADJ_TOT;IFRS_ADJ_02;Y;1;N;N;C4_ALL;N;2;;;;Adjustment 2
IFRS_ADJ_TOT;IFRS_ADJ_03;Y;1;N;N;C4_ALL;N;2;;;;Adjustment first time adoption of IFRS
IFRS_ADJ_TOT;IFRS_ADJ_04;Y;1;N;N;C4_ALL;N;2;;;;IFRS adjustment Prior year restatements
ENTITY_IFRS;ENTITY_CONS;Y;1;N;N;C4_CALC;N;1;;;;Local Gaap Consolidation
ENTITY_CONS;CONS;Y;1;N;N;C4_CALC;N;2;;;;Consolidation Adjustments
CONS;GWGR;Y;1;N;N;C4_CALC;Y;2;;;;Goodwill Treatment - Gross Value
CONS;GWIM;Y;1;N;N;C4_CALC;Y;2;;;;Goodwill Treatment - Impairment
CONS;PRO;Y;1;N;N;C4_CALC;Y;2;;;;Provision Eliminations
CONS;INVGR;Y;1;N;N;C4_CALC;Y;2;;;;Investments Eliminations - Gross Value
CONS;INVIM;Y;1;N;N;C4_CALC;Y;2;;;;Investments Eliminations - Impairment
CONS;ELI;Y;1;N;N;C4_CALC;Y;2;;;;Intercompany Eliminations
CONS;DIV;Y;1;N;N;C4_CALC;Y;2;;;;Dividends Eliminations
CONS;CAP;Y;1;N;N;C4_CALC;Y;2;;;;Split of reserves
CONS;RES;Y;1;N;N;C4_CALC;Y;2;;;;Split of results
ENTITY_CONS;ENTITY_TOTAL;Y;1;N;N;C4_ALL;N;1;;;;Local input
ENTITY_TOTAL;[None];N;1;N;N;C4_ALL;N;1;;;;Local Input
ENTITY_TOTAL;TREAS_ADJB;Y;1;N;N;C4_TREAS;N;2;;;;Treasury Input (Budget only)
ENTITY_TOTAL;LOCAL_ADJ_TOT;Y;1;N;N;C4_ALL;N;1;;;;Local Adjustment Total
LOCAL_ADJ_TOT;LOC_ADJ_01;Y;1;N;N;C4_ALL;N;2;;;;Local adjustment 1
LOCAL_ADJ_TOT;LOC_ADJ_02;Y;1;N;N;C4_ALL;N;2;;;;Local adjustment 2
LOCAL_ADJ_TOT;LOC_ADJ_03;Y;1;N;N;C4_ALL;N;2;;;;Local adjustment Prior year restatements
VIP_TOT;SOFT_CHECKS;Y;0;N;N;C4_ALL;N;1;;;;Soft Validation Members
SOFT_CHECKS;SIGN_EXPECTED;Y;0;N;N;C4_ALL;N;1;;;;Expected intersection sign
SOFT_CHECKS;SIGN_CHECK;Y;0;N;N;C4_ALL;Y;1;;;;Check intersection sign
SOFT_CHECKS;SIGN_EXPECTED_REPORT;Y;0;N;N;C4_ALL;Y;1;;;;Expected intersection sign
SOFT_CHECKS;SIGN_CHECK_REPORT;Y;0;N;N;C4_ALL;Y;1;;;;Check intersection sign
VIP_TOT;TECH;Y;0;N;N;C4_ADMIN;N;0;;;;Technical Members
TECH;Equity;Y;1;N;N;C4_ADMIN;Y;0;;;;Tech for Equity Method
TECH;Minority;Y;1;N;N;C4_ADMIN;Y;0;;;;Tech for Minority
TECH;DMinority;Y;1;N;N;C4_ADMIN;Y;0;;;;Tech for Delta Minority

!Hierarchies=RelPartDisc1
'Parent;Child;IsPrimary;AggregationWeight;SwitchSignForFlow;SwitchTypeForFlow;SecurityClass;IsCalculated;SubmissionGroup;UserDefined1;UserDefined2;UserDefined3;Alias=English
#root;[None];Y;1;N;N;;N;1;;;;None
#root;TotC5;Y;0;N;N;;N;1;;;;Total Custom5
TotC5;RP000;Y;1;N;N;;N;1;;;;Related_Parties
RP000;[None];N;1;N;N;;N;1;;;;None
RP000;RP_TOT;Y;1;N;N;;N;1;;;;Total Related Parties
RP_TOT;Shareholder;Y;1;N;N;;N;1;;;;Related Parties Shareholder
Shareholder;Altimo;Y;1;N;N;;N;1;;;;Alfa Group companies
Shareholder;LetterOne;Y;1;N;N;;N;1;;;;LetterOne Group companies
Shareholder;Telenor;Y;1;N;N;;N;1;;;;Telenor Group companies
RP_TOT;Associate_JV;Y;1;N;N;;N;1;;;;Related Parties Board
Associate_JV;SPAL;Y;1;N;N;;N;1;;;;SPAL TLC
Associate_JV;Euroset;Y;1;N;N;;N;1;;;;Euroset
Associate_JV;OtherAssociate_JV;Y;1;N;N;;N;1;;;;OtherAssociate_JV
RP_TOT;Other;Y;1;N;N;;N;1;;;;Other related parties
RP_TOT;Outdated_structure;Y;1;N;N;;N;1;;;;Outdated structure
Outdated_structure;Board;Y;1;N;N;;N;1;;;;Related Parties Board
Board;GEB;Y;1;N;N;;N;1;;;;GEB
Board;OTH;Y;1;N;N;;N;1;;;;OTH 
Board;OJSC;Y;1;N;N;;N;1;;;;OJSC
Outdated_structure;Globalive;Y;1;N;N;;N;1;;;;Globalive
Outdated_structure;Other_RP;Y;1;N;N;;N;1;;;;Related Parties Other
Other_RP;CCE;Y;1;N;N;;N;1;;;;Consel Conserzio Elis (arl)
Other_RP;CWT;Y;1;N;N;;N;1;;;;Consorzio Wind Team
Other_RP;JS;Y;1;N;N;;N;1;;;;Janna SCarl
Other_RP;MIX;Y;1;N;N;;N;1;;;;MIX Srl
Other_RP;QXN;Y;1;N;N;;N;1;;;;Societa’ Consortile QXN
RP000;HST_CORR_TOT;Y;0;N;N;;N;;;;;Corrected Historical Data
HST_CORR_TOT;HST_CORR;Y;1;N;N;;N;4;;;;Historical Data Corrections
HST_CORR_TOT;[None];N;1;N;N;;N;1;;;;None
HST_CORR_TOT;RP_TOT;N;1;N;N;;N;1;;;;Total Related Parties
RP000;HST_CORR_PLUG;Y;0;N;N;;N;;;;;Corrected Historical Data PLUG
HST_CORR_PLUG;HST_CORR;N;1;N;N;;N;4;;;;Historical Data Corrections
HST_CORR_PLUG;[None];N;1;N;N;;N;1;;;;None
TotC5;DIS_DET01;Y;0;N;N;;N;1;;;;Disclosures Details - 1st Section
DIS_DET01;[None];N;1;N;N;;N;1;;;;None
DIS_DET01;AG_TOT;Y;1;N;N;;N;1;;;;Ageing
AG_TOT;AG_NOT_DUE;Y;1;N;N;;N;1;;;;Not past due
AG_TOT;AG_30D;Y;1;N;N;;N;1;;;;Within 30 days
AG_TOT;AG_31_120D;Y;1;N;N;;N;1;;;;Within 31 - 120 days
AG_TOT;AG_121_150D;Y;1;N;N;;N;1;;;;Within 121 - 150 days
AG_TOT;AG_B_150D;Y;1;N;N;;N;1;;;;Beyond 150 days
AG_TOT;AG_12M;Y;1;N;N;;N;1;;;;Within 12 months
AG_TOT;AG_1_2Y;Y;1;N;N;;N;1;;;;Within 1 - 2 years
AG_TOT;AG_1_3Y;Y;1;N;N;;N;1;;;;Within 1 - 3 years
AG_TOT;AG_1_5Y;Y;1;N;N;;N;1;;;;Within 1 - 5 years
AG_TOT;AG_2_3Y;Y;1;N;N;;N;1;;;;Within 2 - 3 years
AG_TOT;AG_3_4Y;Y;1;N;N;;N;1;;;;Within 3 - 4 years
AG_TOT;AG_4_5Y;Y;1;N;N;;N;1;;;;Within 4 - 5 years
AG_TOT;AG_B_5Y;Y;1;N;N;;N;1;;;;Beyond 5 years
DIS_DET01;CFX_TOT;Y;1;N;N;;N;1;;;;Foreign exchange rate change
CFX_TOT;CFX_10_D_USD;Y;1;N;N;;N;1;;;;10% depreciation currencies against USD
CFX_TOT;CFX_10_A_USD;Y;1;N;N;;N;1;;;;10% depreciation appreciation against USD
CFX_TOT;CFX_10_D_EGP_CAD;Y;1;N;N;;N;1;;;;10% depreciation EGP against CAD
CFX_TOT;CFX_10_A_EGP_CAD;Y;1;N;N;;N;1;;;;10% appreciation EGP against USD
DIS_DET01;VT_TOT;Y;1;N;N;;N;1;;;;Value type
VT_TOT;VT_CAR;Y;1;N;N;;N;1;;;;Carrying value
VT_TOT;VT_FAIR;Y;1;N;N;;N;1;;;;Fair value
DIS_DET01;INP_TOT;Y;1;N;N;;N;1;;;;Fair value input type
INP_TOT;INP_L1;Y;1;N;N;;N;1;;;;Level 1
INP_TOT;INP_L2;Y;1;N;N;;N;1;;;;Level 2
INP_TOT;INP_L3;Y;1;N;N;;N;1;;;;Level 3
DIS_DET01;MOV_FI_TOT;Y;1;N;N;;N;1;;;;Movement type
MOV_FI_TOT;MOV_FI_OPEN;Y;1;N;N;;N;1;;;;Opening balance
MOV_FI_TOT;MOV_FI_CTA;Y;1;N;N;;N;1;;;;Currency translation adjustment
MOV_FI_TOT;MOV_FI_ACC;Y;1;N;N;;N;1;;;;Accrual of non-controlling interest
MOV_FI_TOT;MOV_FI_CH_EARN;Y;1;N;N;;N;1;;;;Change in fair value reported in earnings
MOV_FI_TOT;MOV_FI_CH_EQ;Y;1;N;N;;N;1;;;;Change in fair value reported in equity
MOV_FI_TOT;MOV_FI_ACQ;Y;1;N;N;;N;1;;;;Acquired in business combinations
MOV_FI_TOT;MOV_FI_PURCH;Y;1;N;N;;N;1;;;;Purchased
MOV_FI_TOT;MOV_FI_SOLD;Y;1;N;N;;N;1;;;;Sold / Settled
MOV_FI_TOT;MOV_FI_CLOSE;Y;1;N;N;;N;1;;;;Closing balance
DIS_DET01;TR_TOT;Y;1;N;N;;N;1;;;;Transactions Toal
TR_TOT;TR_001;Y;1;N;N;;N;1;;;;Transaction 001
TR_TOT;TR_002;Y;1;N;N;;N;1;;;;Transaction 002
TR_TOT;TR_003;Y;1;N;N;;N;1;;;;Transaction 003
TR_TOT;TR_004;Y;1;N;N;;N;1;;;;Transaction 004
TR_TOT;TR_005;Y;1;N;N;;N;1;;;;Transaction 005
TR_TOT;TR_006;Y;1;N;N;;N;1;;;;Transaction 006
TR_TOT;TR_007;Y;1;N;N;;N;1;;;;Transaction 007
TR_TOT;TR_008;Y;1;N;N;;N;1;;;;Transaction 008
TR_TOT;TR_009;Y;1;N;N;;N;1;;;;Transaction 009
TR_TOT;TR_010;Y;1;N;N;;N;1;;;;Transaction 010
TR_TOT;TR_011;Y;1;N;N;;N;1;;;;Transaction 011
TR_TOT;TR_012;Y;1;N;N;;N;1;;;;Transaction 012
TR_TOT;TR_013;Y;1;N;N;;N;1;;;;Transaction 013
TR_TOT;TR_014;Y;1;N;N;;N;1;;;;Transaction 014
TR_TOT;TR_015;Y;1;N;N;;N;1;;;;Transaction 015
DIS_DET01;EMP_TOT;Y;1;N;N;;N;1;;;;Total employees
EMP_TOT;EMP_EX;Y;1;N;N;;N;1;;;;Executives
EMP_TOT;EMP_MM;Y;1;N;N;;N;1;;;;Middle Management
EMP_TOT;EMP_OFF;Y;1;N;N;;N;1;;;;Office staff
DIS_DET01;IRR_TOT;Y;1;N;N;;N;1;;;;Internal rate of return
IRR_TOT;IRR_0_50;Y;1;N;N;;N;1;;;;5% or less
IRR_TOT;IRR_50_75;Y;1;N;N;;N;1;;;;Between 5% and 7,5%
IRR_TOT;IRR_75_100;Y;1;N;N;;N;1;;;;Between 7,5% and 10%
IRR_TOT;IRR_100_125;Y;1;N;N;;N;1;;;;Between 10% and 12,5%
IRR_TOT;IRR_125_150;Y;1;N;N;;N;1;;;;Between 12,5% and 15%
IRR_TOT;IRR_B_150;Y;1;N;N;;N;1;;;;Over 15%
DIS_DET01;FV_TOT;Y;1;N;N;;N;1;;;;Fair value
FV_TOT;FV_NET;Y;1;N;N;;N;1;;;;Fair value net effect
FV_TOT;FV_CLOSE;Y;1;N;N;;N;1;;;;Fair value closing
DIS_DET01;COMP_TOT;Y;1;N;N;;N;1;;;;Total competitors
COMP_TOT;COMP_001;Y;1;N;N;;N;1;;;;Grameenphone
COMP_TOT;COMP_002;Y;1;N;N;;N;1;;;;Banglalink (VimpelCom)
COMP_TOT;COMP_003;Y;1;N;N;;N;1;;;;Robi
COMP_TOT;COMP_004;Y;1;N;N;;N;1;;;;Airtel
COMP_TOT;COMP_005;Y;1;N;N;;N;1;;;;Citycell
COMP_TOT;COMP_006;Y;1;N;N;;N;1;;;;Teletalk
DIS_DET01;MKT_TOT;Y;1;N;N;;N;1;;;;Total market
MKT_TOT;MKT_001;Y;1;N;N;;N;1;;;;Viettel Cambodia
MKT_TOT;MKT_002;Y;1;N;N;;N;1;;;;Latelz Smart
MKT_TOT;MKT_003;Y;1;N;N;;N;1;;;;CamGSM
MKT_TOT;MKT_004;Y;1;N;N;;N;1;;;;Hello Axiata Cambodia
MKT_TOT;MKT_005;Y;1;N;N;;N;1;;;;Sotelco (VimpelCom)
MKT_TOT;MKT_006;Y;1;N;N;;N;1;;;;Mfone
MKT_TOT;MKT_007;Y;1;N;N;;N;1;;;;Cadcomms
MKT_TOT;MKT_008;Y;1;N;N;;N;1;;;;GT-Tell
DIS_DET01;LB_TOT;Y;1;N;N;;N;1;;;;Total Loan and Bond
LB_TOT;LD_TOT;Y;1;N;N;;N;1;;;;Total Loan details
LD_TOT;LD_001;Y;1;N;N;;N;1;;;;Loan  detail 1
LD_TOT;LD_002;Y;1;N;N;;N;1;;;;Loan  detail 2
LD_TOT;LD_003;Y;1;N;N;;N;1;;;;Loan  detail 3
LD_TOT;LD_004;Y;1;N;N;;N;1;;;;Loan  detail 4
LD_TOT;LD_005;Y;1;N;N;;N;1;;;;Loan  detail 5
LD_TOT;LD_006;Y;1;N;N;;N;1;;;;Loan  detail 6
LD_TOT;LD_007;Y;1;N;N;;N;1;;;;Loan  detail 7
LD_TOT;LD_008;Y;1;N;N;;N;1;;;;Loan  detail 8
LD_TOT;LD_009;Y;1;N;N;;N;1;;;;Loan  detail 9
LD_TOT;LD_010;Y;1;N;N;;N;1;;;;Loan  detail 10
LD_TOT;LD_011;Y;1;N;N;;N;1;;;;Loan  detail 11
LD_TOT;LD_012;Y;1;N;N;;N;1;;;;Loan  detail 12
LD_TOT;LD_013;Y;1;N;N;;N;1;;;;Loan  detail 13
LD_TOT;LD_014;Y;1;N;N;;N;1;;;;Loan  detail 14
LD_TOT;LD_015;Y;1;N;N;;N;1;;;;Loan  detail 15
LD_TOT;LD_016;Y;1;N;N;;N;1;;;;Loan  detail 16
LD_TOT;LD_017;Y;1;N;N;;N;1;;;;Loan  detail 17
LD_TOT;LD_018;Y;1;N;N;;N;1;;;;Loan  detail 18
LD_TOT;LD_019;Y;1;N;N;;N;1;;;;Loan  detail 19
LD_TOT;LD_020;Y;1;N;N;;N;1;;;;Loan  detail 20
LD_TOT;LD_021;Y;1;N;N;;N;1;;;;Loan  detail 21
LD_TOT;LD_022;Y;1;N;N;;N;1;;;;Loan  detail 22
LD_TOT;LD_023;Y;1;N;N;;N;1;;;;Loan  detail 23
LD_TOT;LD_024;Y;1;N;N;;N;1;;;;Loan  detail 24
LD_TOT;LD_025;Y;1;N;N;;N;1;;;;Loan  detail 25
LD_TOT;LD_026;Y;1;N;N;;N;1;;;;Loan  detail 26
LD_TOT;LD_027;Y;1;N;N;;N;1;;;;Loan  detail 27
LD_TOT;LD_028;Y;1;N;N;;N;1;;;;Loan  detail 28
LD_TOT;LD_029;Y;1;N;N;;N;1;;;;Loan  detail 29
LD_TOT;LD_030;Y;1;N;N;;N;1;;;;Loan  detail 30
LD_TOT;LD_031;Y;1;N;N;;N;1;;;;Loan  detail 31
LD_TOT;LD_032;Y;1;N;N;;N;1;;;;Loan  detail 32
LD_TOT;LD_033;Y;1;N;N;;N;1;;;;Loan  detail 33
LD_TOT;LD_034;Y;1;N;N;;N;1;;;;Loan  detail 34
LD_TOT;LD_035;Y;1;N;N;;N;1;;;;Loan  detail 35
LD_TOT;LD_036;Y;1;N;N;;N;1;;;;Loan  detail 36
LD_TOT;LD_037;Y;1;N;N;;N;1;;;;Loan  detail 37
LD_TOT;LD_038;Y;1;N;N;;N;1;;;;Loan  detail 38
LD_TOT;LD_039;Y;1;N;N;;N;1;;;;Loan  detail 39
LD_TOT;LD_040;Y;1;N;N;;N;1;;;;Loan  detail 40
LD_TOT;LD_041;Y;1;N;N;;N;1;;;;Loan  detail 41
LD_TOT;LD_042;Y;1;N;N;;N;1;;;;Loan  detail 42
LD_TOT;LD_043;Y;1;N;N;;N;1;;;;Loan  detail 43
LD_TOT;LD_044;Y;1;N;N;;N;1;;;;Loan  detail 44
LD_TOT;LD_045;Y;1;N;N;;N;1;;;;Loan  detail 45
LD_TOT;LD_046;Y;1;N;N;;N;1;;;;Loan  detail 46
LD_TOT;LD_047;Y;1;N;N;;N;1;;;;Loan  detail 47
LD_TOT;LD_048;Y;1;N;N;;N;1;;;;Loan  detail 48
LD_TOT;LD_049;Y;1;N;N;;N;1;;;;Loan  detail 49
LD_TOT;LD_050;Y;1;N;N;;N;1;;;;Loan  detail 50
LB_TOT;BD_TOT;Y;1;N;N;;N;1;;;;Total Bond details
BD_TOT;BD_001;Y;1;N;N;;N;1;;;;Bond  detail 1
BD_TOT;BD_002;Y;1;N;N;;N;1;;;;Bond  detail 2
BD_TOT;BD_003;Y;1;N;N;;N;1;;;;Bond  detail 3
BD_TOT;BD_004;Y;1;N;N;;N;1;;;;Bond  detail 4
BD_TOT;BD_005;Y;1;N;N;;N;1;;;;Bond  detail 5
BD_TOT;BD_006;Y;1;N;N;;N;1;;;;Bond  detail 6
BD_TOT;BD_007;Y;1;N;N;;N;1;;;;Bond  detail 7
BD_TOT;BD_008;Y;1;N;N;;N;1;;;;Bond  detail 8
BD_TOT;BD_009;Y;1;N;N;;N;1;;;;Bond  detail 9
BD_TOT;BD_010;Y;1;N;N;;N;1;;;;Bond  detail 10
BD_TOT;BD_011;Y;1;N;N;;N;1;;;;Bond  detail 11
BD_TOT;BD_012;Y;1;N;N;;N;1;;;;Bond  detail 12
BD_TOT;BD_013;Y;1;N;N;;N;1;;;;Bond  detail 13
BD_TOT;BD_014;Y;1;N;N;;N;1;;;;Bond  detail 14
BD_TOT;BD_015;Y;1;N;N;;N;1;;;;Bond  detail 15
BD_TOT;BD_016;Y;1;N;N;;N;1;;;;Bond  detail 16
BD_TOT;BD_017;Y;1;N;N;;N;1;;;;Bond  detail 17
BD_TOT;BD_018;Y;1;N;N;;N;1;;;;Bond  detail 18
BD_TOT;BD_019;Y;1;N;N;;N;1;;;;Bond  detail 19
BD_TOT;BD_020;Y;1;N;N;;N;1;;;;Bond  detail 20
BD_TOT;BD_021;Y;1;N;N;;N;1;;;;Bond  detail 21
BD_TOT;BD_022;Y;1;N;N;;N;1;;;;Bond  detail 22
BD_TOT;BD_023;Y;1;N;N;;N;1;;;;Bond  detail 23
BD_TOT;BD_024;Y;1;N;N;;N;1;;;;Bond  detail 24
BD_TOT;BD_025;Y;1;N;N;;N;1;;;;Bond  detail 25
BD_TOT;BD_026;Y;1;N;N;;N;1;;;;Bond  detail 26
BD_TOT;BD_027;Y;1;N;N;;N;1;;;;Bond  detail 27
BD_TOT;BD_028;Y;1;N;N;;N;1;;;;Bond  detail 28
BD_TOT;BD_029;Y;1;N;N;;N;1;;;;Bond  detail 29
BD_TOT;BD_030;Y;1;N;N;;N;1;;;;Bond  detail 30
BD_TOT;BD_031;Y;1;N;N;;N;1;;;;Bond  detail 31
BD_TOT;BD_032;Y;1;N;N;;N;1;;;;Bond  detail 32
BD_TOT;BD_033;Y;1;N;N;;N;1;;;;Bond  detail 33
BD_TOT;BD_034;Y;1;N;N;;N;1;;;;Bond  detail 34
BD_TOT;BD_035;Y;1;N;N;;N;1;;;;Bond  detail 35
BD_TOT;BD_036;Y;1;N;N;;N;1;;;;Bond  detail 36
BD_TOT;BD_037;Y;1;N;N;;N;1;;;;Bond  detail 37
BD_TOT;BD_038;Y;1;N;N;;N;1;;;;Bond  detail 38
BD_TOT;BD_039;Y;1;N;N;;N;1;;;;Bond  detail 39
BD_TOT;BD_040;Y;1;N;N;;N;1;;;;Bond  detail 40
BD_TOT;BD_041;Y;1;N;N;;N;1;;;;Bond  detail 41
BD_TOT;BD_042;Y;1;N;N;;N;1;;;;Bond  detail 42
BD_TOT;BD_043;Y;1;N;N;;N;1;;;;Bond  detail 43
BD_TOT;BD_044;Y;1;N;N;;N;1;;;;Bond  detail 44
BD_TOT;BD_045;Y;1;N;N;;N;1;;;;Bond  detail 45
BD_TOT;BD_046;Y;1;N;N;;N;1;;;;Bond  detail 46
BD_TOT;BD_047;Y;1;N;N;;N;1;;;;Bond  detail 47
BD_TOT;BD_048;Y;1;N;N;;N;1;;;;Bond  detail 48
BD_TOT;BD_049;Y;1;N;N;;N;1;;;;Bond  detail 49
BD_TOT;BD_050;Y;1;N;N;;N;1;;;;Bond  detail 50
DIS_DET01;IR_TOT;Y;1;N;N;;N;1;;;;Interest rate type
IR_TOT;IR_FL;Y;1;N;N;;N;1;;;;Floating interest rate
IR_TOT;IR_FX;Y;1;N;N;;N;1;;;;Fixed interest rate

!Hierarchies=CostCenterDisc2
'Parent;Child;IsPrimary;AggregationWeight;SwitchSignForFlow;SwitchTypeForFlow;SecurityClass;IsCalculated;SubmissionGroup;UserDefined1;UserDefined2;UserDefined3;Alias=English
#root;[None];Y;1;N;N;;N;1;;;;None
#root;TotC6;Y;0;N;N;;N;1;;;;Total Custom6
TotC6;CC_000;Y;1;N;N;;N;1;;;;Total Cost Centers
CC_000;[None];N;1;N;N;;N;1;;;;None
CC_000;CC_TOT;Y;1;N;N;;N;1;;;;Total Detail by Cost Centers
CC_TOT;CC01;Y;1;N;N;;N;1;;;;Network
CC_TOT;CC02;Y;1;N;N;;N;1;;;;IT
CC_TOT;CC03;Y;1;N;N;;N;1;;;;Sales
CC03;CC31;Y;1;N;N;;N;1;;;;Sales - Shops
CC03;CC32;Y;1;N;N;;N;1;;;;Sales - Non-shops
CC_TOT;CC04;Y;1;N;N;;N;1;;;;Marketing
CC_TOT;CC05;Y;1;N;N;;N;1;;;;Customer Service
CC05;CC51;Y;1;N;N;;N;1;;;;Customer service - CC
CC05;CC52;Y;1;N;N;;N;1;;;;Customer service - Non-CC
CC_TOT;CC06;Y;1;N;N;;N;1;;;;Finance
CC_TOT;CC07;Y;1;N;N;;N;1;;;;HR
CC_TOT;CC08;Y;1;N;N;;N;1;;;;Legal
CC_TOT;CC09;Y;1;N;N;;N;1;;;;Communications
CC_TOT;CC10;Y;1;N;N;;N;1;;;;Other support
CC_TOT;CC11;Y;1;N;N;;N;1;;;;Procurement
CC_TOT;CC12;Y;1;N;N;;N;1;;;;Real Estate
CC_TOT;CC13;Y;1;N;N;;N;1;;;;Supply Chain
TotC6;DIS_DET02;Y;0;N;N;;N;1;;;;Disclosures Details -2nd Section
DIS_DET02;[None];N;1;N;N;;N;1;;;;None
DIS_DET02;CR_TOT;Y;1;N;N;;N;1;;;;Currency type
CR_TOT;CR_USD;Y;1;N;N;;N;1;;;;U.S. Dollar
CR_TOT;CR_EUR;Y;1;N;N;;N;1;;;;Euro
CR_TOT;CR_EGP;Y;1;N;N;;N;1;;;;Egyptian pound
CR_TOT;CR_PKR;Y;1;N;N;;N;1;;;;Pakistan rupies
CR_TOT;CR_BDT;Y;1;N;N;;N;1;;;;Bangladesh Taka
CR_TOT;CR_DZD;Y;1;N;N;;N;1;;;;Algerian dinar
CR_TOT;CR_TND;Y;1;N;N;;N;1;;;;Tunistian dinar
CR_TOT;CR_AOC;Y;1;N;N;;N;1;;;;All other currencies
TotC6;CH_TOT;Y;1;N;N;;N;1;;;;Channel Total
CH_TOT;[None];N;0;N;N;;N;1;;;;None
CH_TOT;Channel;Y;1;N;N;;N;1;;;;Channel
Channel;CH_01;Y;1;N;N;;N;1;;;;Direct
CH_01;CH_02;Y;1;N;N;;N;1;;;;Operator shops own
CH_01;CH_03;Y;1;N;N;;N;1;;;;Operator shops franchise
CH_01;CH_04;Y;1;N;N;;N;1;;;;Digital channels
CH_01;CH_05;Y;1;N;N;;N;1;;;;Call center
CH_01;CH_12;Y;1;N;N;;N;1;;;;Direct, unspecific
Channel;CH_06;Y;1;N;N;;N;1;;;;Indirect
CH_06;CH_07;Y;1;N;N;;N;1;;;;Distributors
CH_06;CH_08;Y;1;N;N;;N;1;;;;Integrated chains
CH_06;CH_09;Y;1;N;N;;N;1;;;;External digital channels
CH_06;CH_10;Y;1;N;N;;N;1;;;;Other channels
CH_06;CH_11;Y;1;N;N;;N;1;;;;Indirect, unspecific

!Hierarchies=CustType
'Parent;Child;IsPrimary;AggregationWeight;SwitchSignForFlow;SwitchTypeForFlow;SecurityClass;IsCalculated;SubmissionGroup;UserDefined1;UserDefined2;UserDefined3;Alias=English
#root;[None];Y;1;N;N;;N;1;;;;None
#root;TotC7;Y;1;N;N;;N;1;;;;Total Custom7
TotC7;CT_TOT;Y;1;N;N;;N;1;;;;Customer Type Total
CT_TOT;[None];N;1;N;N;;N;1;;;;None
CT_TOT;CustomerType;Y;1;N;N;;N;1;;;;CustomerType
CustomerType;CT_01;Y;1;N;N;;N;1;;;;Prepaid
CustomerType;CT_02;Y;1;N;N;;N;1;;;;Postpaid
TotC7;DS_01;Y;1;N;N;;N;1;;;;Destination
DS_01;DS_02;Y;1;N;N;;N;1;;;;Technical
DS_02;DS_03;Y;1;N;N;;N;1;;;;Sites
DS_02;DS_04;Y;1;N;N;;N;1;;;;Technical buildings
DS_02;DS_05;Y;1;N;N;;N;1;;;;Other Technical
DS_01;DS_06;Y;1;N;N;;N;1;;;;Property
DS_06;DS_07;Y;1;N;N;;N;1;;;;CORE
DS_07;DS_08;Y;1;N;N;;N;1;;;;Office buildings
DS_07;DS_09;Y;1;N;N;;N;1;;;;Call centers
DS_07;DS_10;Y;1;N;N;;N;1;;;;Warehouses
DS_07;DS_11;Y;1;N;N;;N;1;;;;Other Property
DS_06;DS_12;Y;1;N;N;;N;1;;;;Shops

!Hierarchies=SecurityClass
'Parent;Child;IsPrimary
#root;[Default];Y
#root;ACC_ACTIVATEHPL;Y
#root;ACC_FINANCIAL;Y
#root;ACC_RATES;Y
#root;ACC_TAX;Y
#root;ACC_TAX_ADMIN;Y
#root;ACC_TECH;Y
#root;ACC_JVITALIA;Y
#root;C4_ADMIN;Y
#root;C4_ALL;Y
#root;C4_CALC;Y
#root;C4_HYP;Y
#root;C4_TREAS;Y
#root;DF_ACTIVATEHPL;Y
#root;DF_ALL;Y
#root;DF_RATES;Y
#root;EN_ADMIN;Y
#root;EN_AGAMA;Y
#root;EN_Algeria_M;Y
#root;EN_Algeria_M_DZD;Y
#root;EN_ALGERIA_T;Y
#root;EN_ALGERIA_TAX;Y
#root;EN_ALKAR;Y
#root;EN_ANTEL;Y
#root;EN_ARARIMA;Y
#root;EN_ARMENCELL;Y
#root;EN_Armen_LEG_CON;Y
#root;EN_Armen_LEG_CON_RUB;Y
#root;EN_Armen_M;Y
#root;EN_Armen_M_AMD;Y
#root;EN_ARMEN_T;Y
#root;EN_ARMENTEL;Y
#root;EN_ASAF_M;Y
#root;EN_Bangladesh_M;Y
#root;EN_Bangladesh_M_BDT;Y
#root;EN_BANGLADESH_T;Y
#root;EN_BANGLADESH_TAX;Y
#root;EN_BARDYM;Y
#root;EN_BC;Y
#root;EN_BDCL;Y
#root;EN_BEELINE;Y
#root;EN_BUZTON;Y
#root;EN_BUZTON_UZS;Y
#root;EN_CANADA_M;Y
#root;EN_CAT;Y
#root;EN_CELLCROFTHOLD;Y
#root;EN_CELLUKR;Y
#root;EN_CIS_ADJ;Y
#root;EN_CIS_HOLDING_T;Y
#root;EN_CIS_LEG_CON;Y
#root;EN_CIS_M;Y
#root;EN_CIS_OFFSH;Y
#root;EN_CIS_OJSC_T;Y
#root;EN_CIS_OJSC_TAX_ADJ;Y
#root;EN_CIS_OJSC_WOKZTJ_T;Y
#root;EN_CIS_T;Y
#root;EN_CIS_TAX_ADJ;Y
#root;EN_CISWOKZ_HQ;Y
#root;EN_CISWOKZ_LOC_Adj;Y
#root;EN_CISWOKZ_M;Y
#root;EN_CIS_WOKZ_T;Y
#root;EN_CITILINE;Y
#root;EN_CLAFDOR;Y
#root;EN_COMNIDORHOLD;Y
#root;EN_CORTEX_EG;Y
#root;EN_CRADEL;Y
#root;EN_CRAYOLA;Y
#root;EN_CRISDENHOLD;Y
#root;EN_DICOM;Y
#root;EN_DMSLTD;Y
#root;EN_DUTCH_OS_T;Y
#root;EN_DUTCH_OS_TAX;Y
#root;EN_EM_Adj;Y
#root;EN_EM_MARK_M;Y
#root;EN_ERUS;Y
#root;EN_EURASIA;Y
#root;EN_EURASIA_M;Y
#root;EN_FIRMESS;Y
#root;EN_FORTLAND;Y
#root;EN_FPPL;Y
#root;EN_FREEVALE;Y
#root;EN_GALATA;Y
#root;EN_Georg_LEG_CON;Y
#root;EN_Georg_LEG_CON_OJSC;Y
#root;EN_Georg_LEG_CON_RUB;Y
#root;EN_Georg_M;Y
#root;EN_Georg_M_GEL;Y
#root;EN_GEORG_OP_T;Y
#root;EN_GEORG_OS_T;Y
#root;EN_GEORG_OS_TAX;Y
#root;EN_GEORG_T;Y
#root;EN_GEORG_TAX;Y
#root;EN_GLFSCA;Y
#root;EN_GLSARL;Y
#root;EN_GOLDEN;Y
#root;EN_GOLDENTELGRP;Y
#root;EN_GOLDENTELLTD;Y
#root;EN_GOLDENTELSRV;Y
#root;EN_GOLDHOLD;Y
#root;EN_GTACQ;Y
#root;EN_GTF_BC;Y
#root;EN_GTFSCA;Y
#root;EN_GTH;Y
#root;EN_GTH_M;Y
#root;EN_GTH_USD;Y
#root;EN_GTH_REC_USD;Y
#root;EN_GTH_ADJ;Y
#root;EN_GTH_M_ADJ;Y
#root;EN_GTH_USD_ADJ;Y
#root;EN_GTH_C;Y
#root;EN_GTHC_BV;Y
#root;EN_GTH_CON;Y
#root;EN_GTH_CON_EUR;Y
#root;EN_GTHKH;Y
#root;EN_GTH_OS_EGP_T;Y
#root;EN_GTH_OS_OTH_T;Y
#root;EN_GTH_OS_T;Y
#root;EN_GTH_OS_TAX;Y
#root;EN_GTH_OTH_T;Y
#root;EN_DUTCH_OS_USD_1_T;Y
#root;EN_DUTCH_OS_USD_1_TAX;Y
#root;EN_DUTCH_OS_USD_2_T;Y
#root;EN_DUTCH_OS_USD_2_TAX;Y
#root;EN_GTH_T;Y
#root;EN_GTH_TAX_T;Y
#root;EN_GTH_TAX;Y
#root;EN_GTH_TAX_ADJ;Y
#root;EN_GTIKAZTEL;Y
#root;EN_GTLLC;Y
#root;EN_GTNBV;Y
#root;EN_GTNBVUSD;Y
#root;EN_GTHFBV;Y
#root;EN_GTO;Y
#root;EN_GT_OSCAR;Y
#root;EN_GTSARL;Y
#root;EN_GTSFIN;Y
#root;EN_GTSUKR;Y
#root;EN_HOLDING_CIS_M;Y
#root;EN_HOLDINGS_ITLUX_M;Y
#root;EN_HOLDINGS_ITLUX_M_EUR;Y
#root;EN_HOLDINGS_M;Y
#root;EN_HQ_AMS_CYPRUS_M;Y
#root;EN_HQ_AMS_HOLD_M;Y
#root;EN_HQ_AMS_HOLD_1_M;Y
#root;EN_HQ_AMS_HOLD_2_M;Y
#root;EN_HQ_AMS_OTHER_M;Y
#root;EN_HQ_M;Y
#root;EN_HQ_OJSC_M;Y
#root;EN_IH_Bank_luxco_M;Y
#root;EN_IH_Bank_luxco_M_EUR;Y
#root;EN_IHL;Y
#root;EN_INVESTHOLD;Y
#root;EN_INVESTICO;Y
#root;EN_IRING;Y
#root;EN_ITALY_M;Y
#root;EN_Italy_Managerial_EUR;Y
#root;EN_ITALY_M_EUR;Y
#root;EN_ITCL;Y
#root;EN_IWCPL_SA;Y
#root;EN_KARTEL;Y
#root;EN_KAZAKH_LEG_CON;Y
#root;EN_KAZAKH_LEG_CON_RUB;Y
#root;EN_Kazakh_M;Y
#root;EN_Kazakh_M_KZT;Y
#root;EN_KAZAKH_OJSC_T;Y
#root;EN_KAZAKH_T;Y
#root;EN_KAZ_OFFSH_M;Y
#root;EN_KAZ_OFFSH_M_KZT;Y
#root;EN_KAZ_OJSC_TAX_ADJ;Y
#root;EN_KAZ_OPER_M;Y
#root;EN_KAZ_OPER_M_KZT;Y
#root;EN_KAZ_OP_KAR_2DAY_T;Y
#root;EN_KAZ_OP_T;Y
#root;EN_KAZ_OP_TETA_TNS_T;Y
#root;EN_KAZ_OS_CYP_T;Y
#root;EN_KAZ_OS_CYP_TAX;Y
#root;EN_KAZ_OS_SEY_T;Y
#root;EN_KAZ_OS_T;Y
#root;EN_KAZ_OS_TAX;Y
#root;EN_KAZ_T;Y
#root;EN_KAZ_TAX;Y
#root;EN_KAZ_TAX_ADJ;Y
#root;EN_KEM;Y
#root;EN_KLAROLUX;Y
#root;EN_KOLANGON;Y
#root;EN_KSGROUP_T;Y
#root;EN_KSGROUP_UAH_T;Y
#root;EN_KUBINTER;Y
#root;EN_KUBTELE;Y
#root;EN_KYIVSTAR;Y
#root;EN_KYIVSTAR_T;Y
#root;EN_KYIVSTAR_TAX;Y
#root;EN_Kyrgyz_LEG_CON;Y
#root;EN_Kyrgyz_LEG_CON_RUB;Y
#root;EN_Kyrgyz_M;Y
#root;EN_Kyrgyz_M_KGS;Y
#root;EN_KYRGYZ_OS_TAX;Y
#root;EN_KYRGYZ_T;Y
#root;EN_KYRGYZ_TAX;Y
#root;EN_KYR_OS_T;Y
#root;EN_KYR_T;Y
#root;EN_LDNPAK;Y
#root;EN_LDNTEL;Y
#root;EN_LDNTEL_CON;Y
#root;EN_LDNTEL_CON_EGP;Y
#root;EN_LDNTEL_CON_EUR;Y
#root;EN_LDNTEL_CON_PKR;Y
#root;EN_LIMNOTEX;Y
#root;EN_LUXCO_OTHER_M;Y
#root;EN_LUX_1_T;Y
#root;EN_LUX_2_T;Y
#root;EN_LUX_3_T;Y
#root;EN_MALTESE_OS_T;Y
#root;EN_MALTESE_TAX;Y
#root;EN_MEDCABLE;Y
#root;EN_MENACREST;Y
#root;EN_MINIMAX;Y
#root;EN_MMMS;Y
#root;EN_MOBITEL;Y
#root;EN_MOGA;Y
#root;EN_NATSER;Y
#root;EN_NL_BRANCH_M;Y
#root;EN_NONE;Y
#root;EN_NOUSE;Y
#root;EN_OJSCADJ;Y
#root;EN_OJSCADJ_LOC;Y
#root;EN_OJSCADJ_RUB;Y
#root;EN_OJSCADJ_LOC_RUB;Y
#root;EN_OJSC_CON;Y
#root;EN_OJSC_CON_LOCAL_NEW;Y
#root;EN_OJSC_CON_RUB;Y
#root;EN_OJSC_T;Y
#root;EN_OJSC_TAX_ADJ;Y
#root;EN_OJSCVIP;Y
#root;EN_VCESOP_EUR;Y
#root;EN_VCESOP_USD;Y
#root;EN_OOOCKN;Y
#root;EN_ORATEL;Y
#root;EN_OTA;Y
#root;EN_OPTIMUM;Y
#root;EN_OTESOP;Y
#root;EN_OTHER_ASAF_AMS_M;Y
#root;EN_OTHER_ASAF_CAIRO_M;Y
#root;EN_OTHER_ASAF_LUX_M;Y
#root;EN_OTHER_ASAF_M;Y
#root;EN_OTHER_CIS_M;Y
#root;EN_OTH_MINV;Y
#root;EN_OTSE_NEW;Y
#root;EN_Pakistan_M;Y
#root;EN_Pakistan_M_PKR;Y
#root;EN_PAKISTAN_T;Y
#root;EN_PAKISTAN_TAX;Y
#root;EN_PAKISTAN_WOWBANK_T;Y
#root;EN_PHONE;Y
#root;EN_PMCL;Y
#root;EN_PMCL_M;Y
#root;EN_PMCL_M_PKR;Y
#root;EN_PMCL_CON;Y
#root;EN_PMCL_CON_EGP;Y
#root;EN_PMCL_CON_EUR;Y
#root;EN_PMCL_CON_PKR;Y
#root;EN_PRUNESCOM;Y
#root;EN_RASCOM;Y
#root;EN_RING_AEI;Y
#root;EN_RING_ALG;Y
#root;EN_RING_ALGS;Y
#root;EN_RING_BANG;Y
#root;EN_RING_CON;Y
#root;EN_RING_CON_EGP;Y
#root;EN_RING_CON_EUR;Y
#root;EN_RING_DUBAI;Y
#root;EN_RING_EG;Y
#root;EN_RING_IRAQ;Y
#root;EN_RING_M;Y
#root;EN_RING_MAINT;Y
#root;EN_RING_PAK;Y
#root;EN_RING_PAKS;Y
#root;EN_RING_RD;Y
#root;EN_RING_T;Y
#root;EN_RUSSIA_ADJ;Y
#root;EN_RUSSIA_HYP_ADJ;Y
#root;EN_RUSSIA_CON;Y
#root;EN_RUSSIA_CON_RUB;Y
#root;EN_RUSSIA_M;Y
#root;EN_RUSSIA_M_RUB;Y
#root;EN_RUSSIA_OP_T;Y
#root;EN_RUSSIA_OP_TAX;Y
#root;EN_RUSSIA_OS_BEL_T;Y
#root;EN_RUSSIA_OS_BEL_TAX;Y
#root;EN_RUSSIA_OS_BVI_T;Y
#root;EN_RUSSIA_OS_BVI_TAX;Y
#root;EN_RUSSIA_OS_CYP_T;Y
#root;EN_RUSSIA_OS_CYP_TAX;Y
#root;EN_RUSSIA_OS_CZECH_T;Y
#root;EN_RUSSIA_OS_CZECH_TAX;Y
#root;EN_RUSSIA_OS_NL_T;Y
#root;EN_RUSSIA_OS_NL_TAX;Y
#root;EN_RUSSIA_OS_T;Y
#root;EN_RUSSIA_OS_USA_T;Y
#root;EN_RUSSIA_OS_USA_TAX;Y
#root;EN_RUSSIA_RUR_T;Y
#root;EN_RUSSIA_T;Y
#root;EN_RUSSIA_TAX;Y
#root;EN_RUSSIA_TAX_ADJ;Y
#root;EN_RUSSIA_TOT_RUR_T;Y
#root;EN_SAKHALIN;Y
#root;EN_SALFINSARL;Y
#root;EN_SAMARA;Y
#root;EN_SATILT;Y
#root;EN_SAWLTD;Y
#root;EN_SFMTCIS;Y
#root;EN_SFMTRUS;Y
#root;EN_SILKWAY;Y
#root;EN_SIM;Y
#root;EN_SKYMOBILE;Y
#root;EN_SMARTS_AST;Y
#root;EN_SMARTS_SAR;Y
#root;EN_SMARTS_ELI;Y
#root;EN_SOUTHEASTASIA_M;Y
#root;EN_SOUTHEASTASIA_T;Y
#root;EN_SOVINTEL;Y
#root;EN_STARAVTO;Y
#root;EN_STARMONEY;Y
#root;EN_STHOLD;Y
#root;EN_STM;Y
#root;EN_SUB_SAHARANAFRICA_M;Y
#root;EN_TACOM;Y
#root;EN_TADJIK_T;Y
#root;EN_TADJIK_TAX;Y
#root;EN_Tajiki_M;Y
#root;EN_Tajiki_M_TJS;Y
#root;EN_TCAR;Y
#root;EN_T_CSL;Y
#root;EN_TELE_SA;Y
#root;EN_TETA;Y
#root;EN_TGLOBE;Y
#root;EN_TGLOBE_CON;Y
#root;EN_TGLOBE_CON_EGP;Y
#root;EN_TGLOBE_CON_EUR;Y
#root;EN_TGLOBE_T;Y
#root;EN_TGLOBE_TAX;Y
#root;EN_THCML;Y
#root;EN_TICL;Y
#root;EN_TIL;Y
#root;EN_TMGL;Y
#root;EN_TNSPLUS;Y
#root;EN_Total_Business;Y
#root;EN_TOTAL_ENTITY;Y
#root;EN_TUCOM;Y
#root;EN_TVL;Y
#root;EN_TWODAY;Y
#root;EN_TZIM;Y
#root;EN_TZIM_M;Y
#root;EN_UKRAINE_TAX;Y
#root;EN_UKR_LEG_CON;Y
#root;EN_UKR_LEG_CON_RUB;Y
#root;EN_UKR_M;Y
#root;EN_UKR_M_UAH;Y
#root;EN_UKR_OFFSH_M;Y
#root;EN_UKR_OFFSH_M_UAH;Y
#root;EN_UKR_OJSC_T;Y
#root;EN_UKR_OJSC_TAX_ADJ;Y
#root;EN_UKR_OPER_M;Y
#root;EN_UKR_OPER_M_UAH;Y
#root;EN_UKR_OP_T;Y
#root;EN_UKR_OS_CYP_T;Y
#root;EN_UKR_OS_CYP_TAX;Y
#root;EN_UKR_OS_T;Y
#root;EN_UKR_OS_USA_T;Y
#root;EN_UKR_OS_USA_TAX;Y
#root;EN_UKR_T;Y
#root;EN_UKR_TAX_ADJ;Y
#root;EN_UNITEL;Y
#root;EN_UNITEL_UZS;Y
#root;EN_Uzbek_LEG_CON;Y
#root;EN_Uzbek_LEG_CON_RUB;Y
#root;EN_Uzbek_M;Y
#root;EN_Uzbek_M_UZS;Y
#root;EN_UZBEK_OS_TAX;Y
#root;EN_UZBEK_T;Y
#root;EN_UZBEK_T_UZS;Y
#root;EN_UZB_OS_T;Y
#root;EN_UZB_T;Y
#root;EN_VCESOP;Y
#root;EN_VESTBALT;Y
#root;EN_VIPADAM_CON;Y
#root;EN_VIPADAM_CON_2;Y
#root;EN_VIPAMS;Y
#root;EN_VIPAMSFIN;Y
#root;EN_VIPARMHOLD;Y
#root;EN_VIPBV;Y
#root;EN_VIPBVI;Y
#root;EN_VIPBVI_T;Y
#root;EN_VIPBVI_TAX;Y
#root;EN_VIPBV_T;Y
#root;EN_VIPBV_TAX;Y
#root;EN_VIPCYPFIN;Y
#root;EN_VIPCYPHOLD;Y
#root;EN_VIPDIGI;Y
#root;EN_VIPFBERM;Y
#root;EN_VIPFBV;Y
#root;EN_VIPFIN;Y
#root;EN_VIPFINLLC;Y
#root;EN_VIPFU_AMS_INTSERV_T;Y
#root;EN_VIPFU_AMS_INTSERV_TAX;Y
#root;EN_VIPFU_AMS_T;Y
#root;EN_VIPFU_AMS_TAX;Y
#root;EN_VIPFU_CYP_T;Y
#root;EN_VIPFU_CYP_TAX;Y
#root;EN_VIPFU_HOLDINGS_T;Y
#root;EN_VIPFU_HOLDINGS_TAX;Y
#root;EN_VIPFU_HOLD_T;Y
#root;EN_VIPFU_HOLD_TAX_ADJ;Y
#root;EN_VIPGEORGIA;Y
#root;EN_VIPGROUP_NL_T;Y
#root;EN_VIPGROUP_NL_TAX;Y
#root;EN_VIPHOLD;Y
#root;EN_VIPHOLDADJ;Y
#root;EN_VIPHOLD_CON;Y
#root;EN_VIPHOLD_CON_2;Y
#root;EN_VIPHOLD_T;Y
#root;EN_VIPHOLD_TAX_ADJ;Y
#root;EN_VIPHQ_ADJ;Y
#root;EN_VIPHQ_TAX_ADJ;Y
#root;EN_GTLVIS_CON;Y
#root;EN_GTLVIS_M;Y
#root;EN_GTLVIS_T;Y
#root;EN_GTLVIS;Y
#root;EN_VIPINTSERV;Y
#root;EN_VIPINV;Y
#root;EN_VIPKAZHOLD;Y
#root;EN_VIPKYGHOLD;Y
#root;EN_VIPLAOS;Y
#root;EN_VIPLAOS_M;Y
#root;EN_VIPLAOSHOLD;Y
#root;EN_VIP_LEGAL_USD;Y
#root;EN_VIP_LEGAL_USD_2;Y
#root;EN_VIPLTD;Y
#root;EN_VIPLTD_CON;Y
#root;EN_VIPLTD_CON_2;Y
#root;EN_VIP_MANAGERIAL_OTHER;Y
#root;EN_VIP_MANAGERIAL_USD;Y
#root;EN_RUSSIA_woNTC_M;Y
#root;EN_RUSSIA_woNTC_M_RUB;Y
#root;EN_DEODAR;Y
#root;EN_VIPMICRO;Y
#root;EN_VIP_NL_T;Y
#root;EN_VIPNL_TAX_ADJ;Y
#root;EN_VIP_T;Y
#root;EN_VIP_TAX;Y
#root;EN_VTHBV;Y
#root;EN_VIPKZHOLDAG;Y
#root;EN_VIPKGHOLDAG;Y
#root;EN_VIP_SWISS_T;Y
#root;EN_VIP_SWISS_TAX;Y
#root;EN_WAF;Y
#root;EN_WAF_II;Y
#root;EN_WAF_LUXCO_M;Y
#root;EN_WAF_LUXCO_M_EUR;Y
#root;EN_WAHF_ITA_TAX;Y
#root;EN_WAHF_LUXCO_M;Y
#root;EN_WAHF_LUXCO_M_EUR;Y
#root;EN_WAHF_SPA_T;Y
#root;EN_WARID;Y
#root;EN_WATERTRAIL;Y
#root;EN_WBANK;Y
#root;EN_WBANK_M;Y
#root;EN_WC_M;Y
#root;EN_WCSARL;Y
#root;EN_WC_SARL_EUR;Y
#root;EN_WC_SARL_EUR_M;Y
#root;EN_WC_SARL_EUR_B;Y
#root;EN_WC_SARL_M;Y
#root;EN_WC_SARL_T;Y
#root;EN_WC_SARL_TAX;Y
#root;EN_WCSP;Y
#root;EN_WCSP_M;Y
#root;EN_WCSP_T;Y
#root;EN_WCSP_TAX;Y
#root;EN_WCSP_USD;Y
#root;EN_WCSP_USD_B;Y
#root;EN_WEATHER_CON;Y
#root;EN_WENTHORP;Y
#root;EN_WF_SL;Y
#root;EN_WIND;Y
#root;EN_WINDACQFIN;Y
#root;EN_WINDACQFINII;Y
#root;EN_WINDACQHOLD;Y
#root;EN_WINDACQHOLD_M;Y
#root;EN_WINDACQHOLD_ADJ;Y
#root;EN_WINDACQHOLD_CON;Y
#root;EN_WINDACQHOLD_CON_EUR;Y
#root;EN_WINDACQHOLDFIN;Y
#root;EN_WINDACQHOLDFINII;Y
#root;EN_WIND_CON;Y
#root;EN_WIND_CON_2;Y
#root;EN_WINDFIN;Y
#root;EN_WIND_Italy_Hold_M;Y
#root;EN_WIND_Italy_Hold_M_EUR;Y
#root;EN_WIND_ITALY_T;Y
#root;EN_WIND_LUXBG_T;Y
#root;EN_WIND_OPCO_ADJ_BUD;Y
#root;EN_WIND_OPCO_M;Y
#root;EN_WIND_OPCO_M_EUR;Y
#root;EN_WINDRETAIL;Y
#root;EN_WIND_T;Y
#root;EN_WIND_TAX_ADJ;Y
#root;EN_WINDTELCO;Y
#root;EN_WINDTELCO_ADJ;Y
#root;EN_WINDTELCO_ADJ_M;Y
#root;EN_WINDTELCO_CON;Y
#root;EN_WINDTELCO_CON_EUR;Y
#root;EN_WINTOP;Y
#root;EN_WT;Y
#root;EN_WT_M;Y
#root;EN_WT_ADJ;Y
#root;SCE_ACTUAL;Y
#root;SCE_OTHER;Y
#root;SCE_PBF;Y
#root;SCE_TAX;Y
#root;EN_TRANSLATE_USD;Y
#root;EN_DUTCH_Trans_to_USD;Y
#root;EN_OJSC_Trans_to_USD;Y
#root;EN_RUS_Trans_to_USD;Y
#root;EN_UKR_Trans_to_USD;Y
#root;EN_KZT_Trans_to_USD;Y
#root;EN_UZB_Trans_to_USD;Y
#root;EN_ARM_Trans_to_USD;Y
#root;EN_KRG_Trans_to_USD;Y
#root;EN_GEO_Trans_to_USD;Y
#root;EN_LAO_Trans_to_USD;Y
#root;EN_WIND_Trans_to_USD;Y
#root;EN_WINDITALY_Trans_to_USD;Y
#root;EN_WINDLUX_Trans_to_USD;Y
#root;EN_GTH_Trans_to_USD;Y
#root;EN_ALG_Trans_to_USD;Y
#root;EN_PAK_Trans_to_USD;Y
#root;EN_BGD_Trans_to_USD;Y
#root;EN_Mobilink_M;Y
#root;EN_WARID_M;Y
#root;EN_Mobilink_M_PKR;Y
#root;EN_VIPGSS_CON;Y
#root;EN_VIPGSS;Y
#root;EN_VIPGSSUKR;Y
#root;EN_VIPGSS_CON_M;Y
#root;EN_NTC;Y
#root;EN_TACOM_Adj;Y
#root;EN_TACOM_TOT;Y
#root;EN_Armen_Adj;Y
#root;EN_Georg_Adj;Y
#root;EN_Kyrgyz_Adj;Y
#root;EN_TNSPLUS_Adj;Y
#root;EN_TNSPLUS_TOT;Y
#root;EN_Tajiki_M_TOT;Y
#root;EN_Armen_M_TOT;Y
#root;EN_Kyrgyz_M_TOT;Y
#root;EN_Georg_M_TOT;Y
#root;EN_Armen_M_AMD_TOT;Y
#root;EN_Kyrgyz_M_KGS_TOT;Y
#root;EN_Georg_M_GEL_TOT;Y
#root;EN_VIPGSSPKR;Y
#root;EN_OJSCADJ_M;Y
#root;EN_GTH_CONS_M;Y
#root;EN_JVITALIA_M;Y
#root;EN_JVITALIA;Y
#root;EN_JVITALIA_ADJ;Y
#root;EN_JVITALIA_M_EUR;Y
#root;EN_VIPLUXHOLDSARL;Y
#root;EN_VIPDIGITALAMS;Y
#root;EN_VIP_LEGAL_USD_3;Y
#root;EN_VIPLTD_CON_P;Y
#root;EN_VIPAMS_CON_P;Y
#root;EN_VIPLUXHOLDSARL_CON_P;Y
#root;EN_VIPINTSERV_CON_P;Y
#root;EN_VIPCYPHOLD_CON_P;Y
#root;EN_VIPHOLD_CON_P;Y
#root;EN_VIPGSS_CON_P;Y
#root;EN_OJSC_VIP_COM_CON_P;Y
#root;EN_NOUSE_CON_P;Y
#root;EN_ARMENTEL_CON_P;Y
#root;EN_VIPFIN_CON_P;Y
#root;EN_LIMNOTEX_CON_P;Y
#root;EN_VIPLAOSHOLD_CON_P;Y
#root;EN_VIPKAZHOLD_CON_P;Y
#root;EN_KARTEL_CON_P;Y
#root;EN_VIPKYGHOLD_CON_P;Y
#root;EN_MENACREST_CON_P;Y
#root;EN_WATERTRAIL_CON_P;Y
#root;EN_FREEVALE_CON_P;Y
#root;EN_SILKWAY_CON_P;Y
#root;EN_GOLDEN_CON_P;Y
#root;EN_SFMTCIS_CON_P;Y
#root;EN_BARDYM_CON_P;Y
#root;EN_SOVINTEL_CON_P;Y
#root;EN_ANTELRAS_CON_P;Y
#root;EN_KUBTELE_CON_P;Y
#root;EN_GOLDHOLD_CON_P;Y
#root;EN_SFMTRUS_CON_P;Y
#root;EN_CLAFDOR_CON_P;Y
#root;EN_COMNIDORHOLD_CON_P;Y
#root;EN_PJS_CON_P;Y
#root;EN_VIPGEORGIA_CON_P;Y
#root;EN_INVESTICO_CON_P;Y
#root;EN_VIPBVI_CON_P;Y
#root;EN_TACOM_TOT_P;Y
#root;EN_VIPMICRO_CON_P;Y
#root;EN_TETA_CON_P;Y
#root;EN_TNSPLUS_TOT_P;Y
#root;EN_WEATHER_CON_P;Y
#root;EN_WCSP_CON_P;Y
#root;EN_GTH_CON_P;Y
#root;EN_GTH_M_CON_P;Y
#root;EN_GTH_M_Adj_CON_P;Y
#root;EN_ITCL_CON_P;Y
#root;EN_MOGA_CON_P;Y
#root;EN_OMNIUM_CON_P;Y
#root;EN_OMNIUM;Y
#root;EN_ORATEL_CON_P;Y
#root;EN_IHL_CON_P;Y
#root;EN_T_CSL_CON_P;Y
#root;EN_IWCPL_SA_CON_P;Y
#root;EN_PMCL_CON_P;Y
#root;EN_LDNTEL_CON_P;Y
#root;EN_FPPL_CON_P;Y
#root;EN_TVL_CON_P;Y
#root;EN_THCML_CON_P;Y
#root;EN_GTHC_BV_CON_P;Y
#root;EN_SAWLTD_CON_P;Y
#root;EN_RING_CON_P;Y
#root;EN_RING_AEI_CON_P;Y
#root;EN_RING_PAK_CON_P;Y
#root;EN_RING_ALG_CON_P;Y
#root;EN_GTACQ_CON_P;Y
#root;EN_GTNBV_CON_P;Y
#root;EN_TIL_CON_P;Y
#root;EN_WIND_CON_P;Y
#root;EN_WINDACQHOLD_CON_P;Y
#root;EN_WINDTELCO_CON_P;Y
#root;EN_VIPLUX;Y

!Hierarchies=Currency
'Parent;Child;IsPrimary;Scale;TranslationOperator;DisplayInICT;Alias=English
#root;AMD;Y;Whole;M;Y;Armenian Dram
#root;BDT;Y;Whole;M;Y;Bangladeshi Taka
#root;BIF;Y;Whole;M;Y;Burundi franc
#root;CAD;Y;Whole;M;Y;Canadian dollar
#root;CHF;Y;Whole;M;Y;Swiss franc
#root;AED;Y;Whole;M;Y;Dirham of united arab emirates
#root;CZK;Y;Whole;M;Y;Czech Koruna
#root;DZD;Y;Whole;M;Y;Algerian dinar
#root;EGP;Y;Whole;M;Y;Egyptian pound
#root;EUR;Y;Whole;M;Y;Euro
#root;GBP;Y;Whole;M;Y;Sterling pound
#root;GEL;Y;Whole;M;Y;Georgian Lari
#root;ILS;Y;Whole;M;Y;Sheqel
#root;JOD;Y;Whole;M;Y;Jordanian dinar
#root;KGS;Y;Whole;M;Y;Kyrgyzstan Som
#root;KHR;Y;Whole;M;Y;Cambodian Riel
#root;KZT;Y;Whole;M;Y;Kazakstan Tenge
#root;LAK;Y;Whole;M;Y;Lao kip
#root;MAD;Y;Whole;M;Y;Dirham Marocchino
#root;MTL;Y;Whole;M;Y;Maltese Lira
#root;NAD;Y;Whole;M;Y;Namibian Dollar
#root;PKR;Y;Whole;M;Y;Pakistan rupies
#root;QAR;Y;Whole;M;Y;Qatar Ryal
#root;RUB;Y;Whole;M;Y;Russian Ruble
#root;SAR;Y;Whole;M;Y;Rial Saudita
#root;SDG;Y;Whole;M;Y;Sterling Sudan
#root;TJS;Y;Whole;M;Y;Tadjikistani Somoni
#root;TND;Y;Whole;M;Y;Tunisian dinar
#root;UAH;Y;Whole;M;Y;Ukrainian Hryvna
#root;USD;Y;Whole;M;Y;US dollar
#root;UZS;Y;Whole;M;Y;Uzbekistan Som
#root;VND;Y;Whole;M;Y;Vietnamese Dong
#root;XAF;Y;Whole;M;Y;CFA Franc
#root;ZWL;Y;Whole;M;Y;Zimbabwe Dollar

!Hierarchies=Period
'Parent;Child;IsPrimary;Alias=English
#root;[Year];Y;
[Year];HalfYear1;Y;
HalfYear1;Quarter1;Y;
Quarter1;Jan;Y;
Quarter1;Feb;Y;
Quarter1;Mar;Y;
HalfYear1;Quarter2;Y;
Quarter2;Apr;Y;
Quarter2;May;Y;
Quarter2;Jun;Y;
[Year];HalfYear2;Y;
HalfYear2;Quarter3;Y;
Quarter3;Jul;Y;
Quarter3;Aug;Y;
Quarter3;Sep;Y;
HalfYear2;Quarter4;Y;
Quarter4;Oct;Y;
Quarter4;Nov;Y;
Quarter4;Dec;Y;

!Hierarchies=Scenario
'Parent;Child;IsPrimary;DefaultFrequency;DefaultView;ZeroViewForNonAdj;ZeroViewForAdj;ConsolidateYTD;MaximumReviewLevel;UsesLineItems;HfmEnableProcessManagement;SecurityClass;EnableDataAudit;DefFreqForICTrans;UserDefined1;UserDefined2;UserDefined3;Alias=English
#root;ACT;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_ACTUAL;Y;MTD;ACT;;;Actual Scenario
#root;BDG;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_PBF;Y;MTD;FCT93;;;Budget Scenario
#root;BP1;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_PBF;Y;MTD;FCT93;;;Business Plan - 1st Year
#root;BP2;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_PBF;Y;MTD;BP1;;;Business Plan - 2ns Year
#root;BP3;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_PBF;Y;MTD;BP2;;;Business Plan - 3rd Year
#root;BP4;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_PBF;Y;MTD;BP3;;;Business Plan - 3rd Year
#root;BP5;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_PBF;Y;MTD;BP4;;;Business Plan - 3rd Year
#root;FCT39;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_PBF;Y;MTD;ACT;;FORE;Forecast 3+9
#root;FCT66;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_PBF;Y;MTD;ACT;;FORE;Forecast 6+6
#root;FCT93;Y;MTD;Periodic;Periodic;Periodic;N;10;Y;Y;SCE_PBF;Y;MTD;ACT;;FORE;Forecast 9+3
#root;ACT_BDG;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_OTHER;Y;MTD;SIM;ACT;BDG;Actual at budget rate
#root;ACT_RPY;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_OTHER;Y;MTD;SIM;ACT;ACT_-1;Actual at previous year rate
#root;BDG_RPY;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_OTHER;Y;MTD;SIM;BDG;BDG_-1;Actual at previous year rate
#root;ACT_BRNY;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;SCE_OTHER;Y;MTD;SIM;ACT;BDG_+1;Actual at budget next year rate
#root;LBE_BRNY;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;EN_ADMIN;Y;MTD;SIM;FCT;BDG_+1;Last Forecast at budget rates next year
#root;LBE_BRCY;Y;MTD;YTD;YTD;YTD;Y;10;Y;Y;EN_ADMIN;Y;MTD;SIM;FCT;BDG;Last Forecast budget rates current year
#root;TAX;Y;MTD;YTD;YTD;YTD;Y;10;N;Y;SCE_TAX;Y;MTD;;;;Tax Scenario

!Hierarchies=View
'Parent;Child;IsPrimary;Alias=English
#root;YTD;Y;Year to Date
#root;HYTD;Y;Half Year to date
#root;QTD;Y;Quarter to Date
#root;MTD;Y;Month to Date

!Hierarchies=Year
'Parent;Child;IsPrimary;Alias=English
#root;2012;Y;
#root;2013;Y;
#root;2014;Y;
#root;2015;Y;
#root;2016;Y;
#root;2017;Y;
#root;2018;Y;
#root;2019;Y;
#root;2020;Y;
#root;2021;Y;
#root;2022;Y;
#root;2023;Y;
#root;2024;Y;
#root;2025;Y;
#root;2026;Y;
#root;2027;Y;
#root;2028;Y;
#root;2029;Y;
#root;2030;Y;
#root;2031;Y;

!Hierarchies=ConsolidationMethod
'Parent;Child;IsPrimary;UsedByCalcRoutine;IsHoldingMethod;ToPercentControlComp;ToPercentControl;PercentConsol;PercentConsolValue;Control;Alias=English
#root;AHS;Y;N;N;;0;;0;;Asset held for sale
#root;NEWSUBS;Y;N;N;;0;;0;;Incoming
#root;DISPOSED;Y;N;N;;0;;0;;Disposed company beginnig year
#root;DISPOSEDDY;Y;N;N;;0;;0;;Disposed company during year
#root;DISCONTINUED;Y;N;N;;0;;0;;Discontinued
#root;NOTCONSOL;Y;Y;N;<;20;PERCENTAGE;0;No;Not consolidated company
#root;EQUITY;Y;Y;N;<;50;POWNMIN;0;Limited;Equity method
#root;CONSOLIDATED;Y;Y;N;<=;100;PERCENTAGE;100;Full;Global method
#root;HOLDING;Y;Y;Y;<=;100;PERCENTAGE;100;;Holding method

!Hierarchies=Alias
'Parent;Child;IsPrimary
#root;English;Y
