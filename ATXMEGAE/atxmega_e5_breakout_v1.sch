<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.4">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="01jyd">
<description>more JYD stuff</description>
<packages>
<package name="TQFP32">
<description>TQFP32 example
this package is used by e.g. the Atmel ATMEGA328P-AU
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: e5bd48346acc4d549d678cb059be64ef
</description>
<text x="0" y="6.5" size="1" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-6.5" size="1" layer="27" align="center">&gt;VALUE</text>
<smd name="1" x="-4.625" y="2.8" dx="2.17" dy="0.36" layer="1" roundness="100" rot="R180"/>
<smd name="2" x="-4.625" y="2" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R180"/>
<smd name="3" x="-4.625" y="1.2" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R180"/>
<smd name="4" x="-4.625" y="0.4" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R180"/>
<smd name="5" x="-4.625" y="-0.4" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R180"/>
<smd name="6" x="-4.625" y="-1.2" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R180"/>
<smd name="7" x="-4.625" y="-2" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R180"/>
<smd name="8" x="-4.625" y="-2.8" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R180"/>
<smd name="9" x="-2.8" y="-4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R90"/>
<smd name="10" x="-2" y="-4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R90"/>
<smd name="11" x="-1.2" y="-4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R90"/>
<smd name="12" x="-0.4" y="-4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R90"/>
<smd name="13" x="0.4" y="-4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R90"/>
<smd name="14" x="1.2" y="-4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R90"/>
<smd name="15" x="2" y="-4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R90"/>
<smd name="16" x="2.8" y="-4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R90"/>
<smd name="17" x="4.625" y="-2.8" dx="2.17" dy="0.36" layer="1" roundness="50"/>
<smd name="18" x="4.625" y="-2" dx="2.17" dy="0.36" layer="1" roundness="50"/>
<smd name="19" x="4.625" y="-1.2" dx="2.17" dy="0.36" layer="1" roundness="50"/>
<smd name="20" x="4.625" y="-0.4" dx="2.17" dy="0.36" layer="1" roundness="50"/>
<smd name="21" x="4.625" y="0.4" dx="2.17" dy="0.36" layer="1" roundness="50"/>
<smd name="22" x="4.625" y="1.2" dx="2.17" dy="0.36" layer="1" roundness="50"/>
<smd name="23" x="4.625" y="2" dx="2.17" dy="0.36" layer="1" roundness="50"/>
<smd name="24" x="4.625" y="2.8" dx="2.17" dy="0.36" layer="1" roundness="50"/>
<smd name="25" x="2.8" y="4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R270"/>
<smd name="26" x="2" y="4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R270"/>
<smd name="27" x="1.2" y="4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R270"/>
<smd name="28" x="0.4" y="4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R270"/>
<smd name="29" x="-0.4" y="4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R270"/>
<smd name="30" x="-1.2" y="4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R270"/>
<smd name="31" x="-2" y="4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R270"/>
<smd name="32" x="-2.8" y="4.625" dx="2.17" dy="0.36" layer="1" roundness="50" rot="R270"/>
<wire x1="-3" y1="3" x2="3" y2="3" width="0.25" layer="21"/>
<wire x1="3" y1="3" x2="3" y2="-3" width="0.25" layer="21"/>
<wire x1="3" y1="-3" x2="-3" y2="-3" width="0.25" layer="21"/>
<wire x1="-3" y1="-3" x2="-3" y2="3" width="0.25" layer="21"/>
<circle x="-4.5" y="3.5" radius="0.125" width="0.125" layer="21"/>
<circle x="0" y="0" radius="1" width="0.25" layer="21"/>
</package>
<package name="PIN_2X3_SMD_SAMTEC_TSM">
<description>2x3 pin pinheader SMD
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: d7b5175613384e6f977e7df3eedf184d
 parent: d01beefd36ad45d7b724129e9dc8bfd4</description>
<text x="0" y="4.81" size="1" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-4.81" size="1" layer="27" align="center">&gt;VALUE</text>
<smd name="1" x="-2.475" y="2.54" dx="3.68" dy="1.27" layer="1" roundness="100" rot="R180"/>
<smd name="2" x="2.475" y="2.54" dx="3.68" dy="1.27" layer="1"/>
<smd name="3" x="-2.475" y="0" dx="3.68" dy="1.27" layer="1" rot="R180"/>
<smd name="4" x="2.475" y="0" dx="3.68" dy="1.27" layer="1"/>
<smd name="5" x="-2.475" y="-2.54" dx="3.68" dy="1.27" layer="1" rot="R180"/>
<smd name="6" x="2.475" y="-2.54" dx="3.68" dy="1.27" layer="1"/>
</package>
<package name="PIN_2X3_ALT">
<description>2X3 pin pinheader
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: 5388ee423be14d9d8224d93e6647d65b
 parent: c27da481bc86472abbbf234a65140d26</description>
<text x="0" y="4.81" size="1" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-4.81" size="1" layer="27" align="center">&gt;VALUE</text>
<pad name="1" x="-1.27" y="2.54" drill="1" diameter="2.2" rot="R180"/>
<pad name="2" x="1.27" y="2.54" drill="1" diameter="2.2" shape="octagon"/>
<wire x1="0" y1="1.905" x2="0" y2="3.175" width="0.15" layer="21"/>
<wire x1="0" y1="1.905" x2="0" y2="3.175" width="0.15" layer="21"/>
<wire x1="-0.635" y1="3.81" x2="-1.905" y2="3.81" width="0.15" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.905" y2="3.81" width="0.15" layer="21"/>
<wire x1="-2.54" y1="3.175" x2="-2.54" y2="1.905" width="0.15" layer="21"/>
<wire x1="2.54" y1="3.175" x2="2.54" y2="1.905" width="0.15" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.15" layer="21"/>
<wire x1="1.905" y1="1.27" x2="0.635" y2="1.27" width="0.15" layer="21"/>
<wire x1="0" y1="3.175" x2="-0.635" y2="3.81" width="0.15" layer="21"/>
<wire x1="0" y1="3.175" x2="0.635" y2="3.81" width="0.15" layer="21"/>
<wire x1="-1.905" y1="3.81" x2="-2.54" y2="3.175" width="0.15" layer="21"/>
<wire x1="1.905" y1="3.81" x2="2.54" y2="3.175" width="0.15" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="1.27" width="0.15" layer="21"/>
<wire x1="2.54" y1="1.905" x2="1.905" y2="1.27" width="0.15" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="1.905" width="0.15" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="1.905" width="0.15" layer="21"/>
<pad name="3" x="-1.27" y="0" drill="1" diameter="2.2" shape="octagon" rot="R180"/>
<pad name="4" x="1.27" y="0" drill="1" diameter="2.2" shape="octagon"/>
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0.15" layer="21"/>
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0.15" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.905" y2="1.27" width="0.15" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.15" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.15" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.15" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-0.635" y2="-1.27" width="0.15" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.15" layer="21"/>
<wire x1="0" y1="0.635" x2="-0.635" y2="1.27" width="0.15" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.15" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.15" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.15" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.15" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0" y2="-0.635" width="0.15" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.15" layer="21"/>
<pad name="5" x="-1.27" y="-2.54" drill="1" diameter="2.2" shape="octagon" rot="R180"/>
<pad name="6" x="1.27" y="-2.54" drill="1" diameter="2.2" shape="octagon"/>
<wire x1="0" y1="-3.175" x2="0" y2="-1.905" width="0.15" layer="21"/>
<wire x1="0" y1="-3.175" x2="0" y2="-1.905" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.15" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="1.905" y2="-1.27" width="0.15" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="-3.175" width="0.15" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="-3.175" width="0.15" layer="21"/>
<wire x1="-1.905" y1="-3.81" x2="-0.635" y2="-3.81" width="0.15" layer="21"/>
<wire x1="1.905" y1="-3.81" x2="0.635" y2="-3.81" width="0.15" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-1.27" width="0.15" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-1.27" width="0.15" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-1.905" width="0.15" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="2.54" y2="-1.905" width="0.15" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-1.905" y2="-3.81" width="0.15" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="1.905" y2="-3.81" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-3.81" x2="0" y2="-3.175" width="0.15" layer="21"/>
<wire x1="0.635" y1="-3.81" x2="0" y2="-3.175" width="0.15" layer="21"/>
</package>
<package name="PIN_2X3_ALT_S">
<description>2X3 pin pinheader
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: 8e209e4c771743e28d103d10dcf3717c
 parent: c27da481bc86472abbbf234a65140d26</description>
<text x="0" y="4.81" size="1" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-4.81" size="1" layer="27" align="center">&gt;VALUE</text>
<pad name="1" x="-1.27" y="2.54" drill="1" diameter="1.8" rot="R180"/>
<pad name="2" x="1.27" y="2.54" drill="1" diameter="1.8" shape="octagon"/>
<wire x1="0" y1="1.905" x2="0" y2="3.175" width="0.15" layer="21"/>
<wire x1="0" y1="1.905" x2="0" y2="3.175" width="0.15" layer="21"/>
<wire x1="-0.635" y1="3.81" x2="-1.905" y2="3.81" width="0.15" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.905" y2="3.81" width="0.15" layer="21"/>
<wire x1="-2.54" y1="3.175" x2="-2.54" y2="1.905" width="0.15" layer="21"/>
<wire x1="2.54" y1="3.175" x2="2.54" y2="1.905" width="0.15" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.15" layer="21"/>
<wire x1="1.905" y1="1.27" x2="0.635" y2="1.27" width="0.15" layer="21"/>
<wire x1="0" y1="3.175" x2="-0.635" y2="3.81" width="0.15" layer="21"/>
<wire x1="0" y1="3.175" x2="0.635" y2="3.81" width="0.15" layer="21"/>
<wire x1="-1.905" y1="3.81" x2="-2.54" y2="3.175" width="0.15" layer="21"/>
<wire x1="1.905" y1="3.81" x2="2.54" y2="3.175" width="0.15" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="1.27" width="0.15" layer="21"/>
<wire x1="2.54" y1="1.905" x2="1.905" y2="1.27" width="0.15" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="1.905" width="0.15" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="1.905" width="0.15" layer="21"/>
<pad name="3" x="-1.27" y="0" drill="1" diameter="1.8" shape="octagon" rot="R180"/>
<pad name="4" x="1.27" y="0" drill="1" diameter="1.8" shape="octagon"/>
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0.15" layer="21"/>
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0.15" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.905" y2="1.27" width="0.15" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.15" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.15" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.15" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-0.635" y2="-1.27" width="0.15" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.15" layer="21"/>
<wire x1="0" y1="0.635" x2="-0.635" y2="1.27" width="0.15" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.15" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.15" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.15" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.15" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0" y2="-0.635" width="0.15" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.15" layer="21"/>
<pad name="5" x="-1.27" y="-2.54" drill="1" diameter="1.8" shape="octagon" rot="R180"/>
<pad name="6" x="1.27" y="-2.54" drill="1" diameter="1.8" shape="octagon"/>
<wire x1="0" y1="-3.175" x2="0" y2="-1.905" width="0.15" layer="21"/>
<wire x1="0" y1="-3.175" x2="0" y2="-1.905" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.15" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="1.905" y2="-1.27" width="0.15" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="-3.175" width="0.15" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="-3.175" width="0.15" layer="21"/>
<wire x1="-1.905" y1="-3.81" x2="-0.635" y2="-3.81" width="0.15" layer="21"/>
<wire x1="1.905" y1="-3.81" x2="0.635" y2="-3.81" width="0.15" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-1.27" width="0.15" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-1.27" width="0.15" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-1.905" width="0.15" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="2.54" y2="-1.905" width="0.15" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-1.905" y2="-3.81" width="0.15" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="1.905" y2="-3.81" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-3.81" x2="0" y2="-3.175" width="0.15" layer="21"/>
<wire x1="0.635" y1="-3.81" x2="0" y2="-3.175" width="0.15" layer="21"/>
</package>
<package name="0603">
<description>Generic 0603 footprint
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: 10644a0b9a3a4f2a8a8b0add2ba7ce21
 parent: dc93599ddebd4bf8a02e4beef8a09b8b</description>
<text x="0" y="1.4" size="1" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-1.4" size="1" layer="27" align="center">&gt;VALUE</text>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<wire x1="-0.35" y1="0.45" x2="0.35" y2="0.45" width="0.1" layer="51"/>
<wire x1="-0.35" y1="-0.45" x2="0.35" y2="-0.45" width="0.1" layer="51"/>
<rectangle x1="-0.85" y1="-0.5" x2="-0.35" y2="0.5" layer="51"/>
<rectangle x1="0.35" y1="-0.5" x2="0.85" y2="0.5" layer="51"/>
<wire x1="-1.6" y1="-0.75" x2="1.6" y2="-0.75" width="0.1" layer="39"/>
<wire x1="1.6" y1="-0.75" x2="1.6" y2="0.75" width="0.1" layer="39"/>
<wire x1="1.6" y1="0.75" x2="-1.6" y2="0.75" width="0.1" layer="39"/>
<wire x1="-1.6" y1="0.75" x2="-1.6" y2="-0.75" width="0.1" layer="39"/>
<wire x1="-1.725" y1="-0.975" x2="1.725" y2="-0.975" width="0.1" layer="21"/>
<wire x1="1.725" y1="-0.975" x2="1.725" y2="0.975" width="0.1" layer="21"/>
<wire x1="1.725" y1="0.975" x2="-1.725" y2="0.975" width="0.1" layer="21"/>
<wire x1="-1.725" y1="0.975" x2="-1.725" y2="-0.975" width="0.1" layer="21"/>
</package>
<package name="0805">
<description>Generic 0805 footprint
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: e132e1318ef24ac393a217ce31a25f1e
 parent: 10644a0b9a3a4f2a8a8b0add2ba7ce21</description>
<text x="0" y="1.5" size="1" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-1.5" size="1" layer="27" align="center">&gt;VALUE</text>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<wire x1="-0.35" y1="0.65" x2="0.35" y2="0.65" width="0.1" layer="51"/>
<wire x1="-0.35" y1="-0.65" x2="0.35" y2="-0.65" width="0.1" layer="51"/>
<rectangle x1="-1.1" y1="-0.7" x2="-0.35" y2="0.7" layer="51"/>
<rectangle x1="0.35" y1="-0.7" x2="1.1" y2="0.7" layer="51"/>
<wire x1="-1.65" y1="-0.9" x2="1.65" y2="-0.9" width="0.1" layer="39"/>
<wire x1="1.65" y1="-0.9" x2="1.65" y2="0.9" width="0.1" layer="39"/>
<wire x1="1.65" y1="0.9" x2="-1.65" y2="0.9" width="0.1" layer="39"/>
<wire x1="-1.65" y1="0.9" x2="-1.65" y2="-0.9" width="0.1" layer="39"/>
<wire x1="-1.65" y1="-0.9" x2="1.65" y2="-0.9" width="0.1" layer="21"/>
<wire x1="1.65" y1="-0.9" x2="1.65" y2="0.9" width="0.1" layer="21"/>
<wire x1="1.65" y1="0.9" x2="-1.65" y2="0.9" width="0.1" layer="21"/>
<wire x1="-1.65" y1="0.9" x2="-1.65" y2="-0.9" width="0.1" layer="21"/>
</package>
<package name="1206">
<description>Generic 1206 footprint
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: a9b4ccf424df467ea7d99b6e1ea896de
 parent: e132e1318ef24ac393a217ce31a25f1e</description>
<text x="0" y="1.8" size="1" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-1.8" size="1" layer="27" align="center">&gt;VALUE</text>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<wire x1="-1" y1="0.8" x2="1" y2="0.8" width="0.1" layer="51"/>
<wire x1="-1" y1="-0.8" x2="1" y2="-0.8" width="0.1" layer="51"/>
<rectangle x1="-1.7" y1="-0.85" x2="-0.95" y2="0.85" layer="51"/>
<rectangle x1="0.95" y1="-0.85" x2="1.7" y2="0.85" layer="51"/>
<wire x1="-2.4" y1="-1.1" x2="2.4" y2="-1.1" width="0.1" layer="39"/>
<wire x1="2.4" y1="-1.1" x2="2.4" y2="1.1" width="0.1" layer="39"/>
<wire x1="2.4" y1="1.1" x2="-2.4" y2="1.1" width="0.1" layer="39"/>
<wire x1="-2.4" y1="1.1" x2="-2.4" y2="-1.1" width="0.1" layer="39"/>
<wire x1="-2.4" y1="-1.1" x2="2.4" y2="-1.1" width="0.1" layer="21"/>
<wire x1="2.4" y1="-1.1" x2="2.4" y2="1.1" width="0.1" layer="21"/>
<wire x1="2.4" y1="1.1" x2="-2.4" y2="1.1" width="0.1" layer="21"/>
<wire x1="-2.4" y1="1.1" x2="-2.4" y2="-1.1" width="0.1" layer="21"/>
</package>
<package name="BUTTON_ALPS_SMD_5.2MM_SKQG">
<description>
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: 69749eafd7584cada41b63ad6030d54d
 parent: 7db0a6816f5a4a5581e92cecab7d7e08</description>
<text x="0" y="3.7" size="1" layer="25" align="center">&gt;NAME</text>
<circle x="-3.1" y="3.7" radius="0.23125" width="0.23125" layer="21"/>
<text x="0" y="-3.7" size="1" layer="27" align="center">&gt;VALUE</text>
<smd name="1" x="-3.1" y="1.85" dx="1.8" dy="1.1" layer="1" rot="R180"/>
<smd name="2" x="3.1" y="1.85" dx="1.8" dy="1.1" layer="1"/>
<smd name="3" x="-3.1" y="-1.85" dx="1.8" dy="1.1" layer="1" rot="R180"/>
<smd name="4" x="3.1" y="-1.85" dx="1.8" dy="1.1" layer="1"/>
<rectangle x1="1" y1="-1.3" x2="4" y2="1.3" layer="43"/>
<rectangle x1="-4" y1="-1.3" x2="-1" y2="1.3" layer="43"/>
<circle x="0" y="0" radius="1" width="0.127" layer="21"/>
<wire x1="-2.6" y1="2.6" x2="2.6" y2="2.6" width="0.127" layer="21"/>
<wire x1="2.6" y1="2.6" x2="2.6" y2="-2.6" width="0.127" layer="21"/>
<wire x1="2.6" y1="-2.6" x2="-2.6" y2="-2.6" width="0.127" layer="21"/>
<wire x1="-2.6" y1="-2.6" x2="-2.6" y2="2.6" width="0.127" layer="21"/>
</package>
<package name="PIN_1X6">
<description>8 pin pinheader
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: c2bf9acdab414de7891c3f8d5c51767f
 parent: 0467987b220e4ad3a8cc7250d4ac4848</description>
<text x="0" y="8.62" size="1" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-8.62" size="1" layer="27" align="center">&gt;VALUE</text>
<pad name="1" x="0" y="6.35" drill="1" diameter="2.2"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="6.985" width="0.15" layer="21"/>
<wire x1="0.635" y1="7.62" x2="-0.635" y2="7.62" width="0.15" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="5.715" width="0.15" layer="21"/>
<wire x1="-0.635" y1="5.08" x2="0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="1.27" y1="6.985" x2="0.635" y2="7.62" width="0.15" layer="21"/>
<wire x1="-0.635" y1="7.62" x2="-1.27" y2="6.985" width="0.15" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="0.635" y1="5.08" x2="1.27" y2="5.715" width="0.15" layer="21"/>
<pad name="2" x="0" y="3.81" drill="1" diameter="2.2"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="4.445" width="0.15" layer="21"/>
<wire x1="0.635" y1="5.08" x2="-0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="3.175" width="0.15" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="1.27" y1="4.445" x2="0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="-0.635" y1="5.08" x2="-1.27" y2="4.445" width="0.15" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="3.175" width="0.15" layer="21"/>
<pad name="3" x="0" y="1.27" drill="1" diameter="2.2"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="1.905" width="0.15" layer="21"/>
<wire x1="0.635" y1="2.54" x2="-0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="0.635" width="0.15" layer="21"/>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.15" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="-1.27" y2="1.905" width="0.15" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="0" width="0.15" layer="21"/>
<wire x1="0.635" y1="0" x2="1.27" y2="0.635" width="0.15" layer="21"/>
<pad name="4" x="0" y="-1.27" drill="1" diameter="2.2"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="-0.635" width="0.15" layer="21"/>
<wire x1="0.635" y1="0" x2="-0.635" y2="0" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="-1.905" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="0" width="0.15" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="-0.635" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.27" y2="-1.905" width="0.15" layer="21"/>
<pad name="5" x="0" y="-3.81" drill="1" diameter="2.2"/>
<wire x1="1.27" y1="-4.445" x2="1.27" y2="-3.175" width="0.15" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-3.175" x2="-1.27" y2="-4.445" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-5.08" x2="0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="1.27" y1="-3.175" x2="0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.27" y2="-3.175" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-4.445" x2="-0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="0.635" y1="-5.08" x2="1.27" y2="-4.445" width="0.15" layer="21"/>
<pad name="6" x="0" y="-6.35" drill="1" diameter="2.2"/>
<wire x1="1.27" y1="-6.985" x2="1.27" y2="-5.715" width="0.15" layer="21"/>
<wire x1="0.635" y1="-5.08" x2="-0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-5.715" x2="-1.27" y2="-6.985" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-7.62" x2="0.635" y2="-7.62" width="0.15" layer="21"/>
<wire x1="1.27" y1="-5.715" x2="0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-5.08" x2="-1.27" y2="-5.715" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-6.985" x2="-0.635" y2="-7.62" width="0.15" layer="21"/>
<wire x1="0.635" y1="-7.62" x2="1.27" y2="-6.985" width="0.15" layer="21"/>
</package>
<package name="PIN_1X6_S">
<description>8 pin pinheader
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: 0ecb97821889480bbca498d3d59bebd2
 parent: c2bf9acdab414de7891c3f8d5c51767f</description>
<text x="0" y="8.62" size="1" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-8.62" size="1" layer="27" align="center">&gt;VALUE</text>
<pad name="1" x="0" y="6.35" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="6.985" width="0.15" layer="21"/>
<wire x1="0.635" y1="7.62" x2="-0.635" y2="7.62" width="0.15" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="5.715" width="0.15" layer="21"/>
<wire x1="-0.635" y1="5.08" x2="0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="1.27" y1="6.985" x2="0.635" y2="7.62" width="0.15" layer="21"/>
<wire x1="-0.635" y1="7.62" x2="-1.27" y2="6.985" width="0.15" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="0.635" y1="5.08" x2="1.27" y2="5.715" width="0.15" layer="21"/>
<pad name="2" x="0" y="3.81" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="4.445" width="0.15" layer="21"/>
<wire x1="0.635" y1="5.08" x2="-0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="3.175" width="0.15" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="1.27" y1="4.445" x2="0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="-0.635" y1="5.08" x2="-1.27" y2="4.445" width="0.15" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="3.175" width="0.15" layer="21"/>
<pad name="3" x="0" y="1.27" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="1.905" width="0.15" layer="21"/>
<wire x1="0.635" y1="2.54" x2="-0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="0.635" width="0.15" layer="21"/>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.15" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="-1.27" y2="1.905" width="0.15" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="0" width="0.15" layer="21"/>
<wire x1="0.635" y1="0" x2="1.27" y2="0.635" width="0.15" layer="21"/>
<pad name="4" x="0" y="-1.27" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="-0.635" width="0.15" layer="21"/>
<wire x1="0.635" y1="0" x2="-0.635" y2="0" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="-1.905" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="0" width="0.15" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="-0.635" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.27" y2="-1.905" width="0.15" layer="21"/>
<pad name="5" x="0" y="-3.81" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="-4.445" x2="1.27" y2="-3.175" width="0.15" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-3.175" x2="-1.27" y2="-4.445" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-5.08" x2="0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="1.27" y1="-3.175" x2="0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.27" y2="-3.175" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-4.445" x2="-0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="0.635" y1="-5.08" x2="1.27" y2="-4.445" width="0.15" layer="21"/>
<pad name="6" x="0" y="-6.35" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="-6.985" x2="1.27" y2="-5.715" width="0.15" layer="21"/>
<wire x1="0.635" y1="-5.08" x2="-0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-5.715" x2="-1.27" y2="-6.985" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-7.62" x2="0.635" y2="-7.62" width="0.15" layer="21"/>
<wire x1="1.27" y1="-5.715" x2="0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-5.08" x2="-1.27" y2="-5.715" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-6.985" x2="-0.635" y2="-7.62" width="0.15" layer="21"/>
<wire x1="0.635" y1="-7.62" x2="1.27" y2="-6.985" width="0.15" layer="21"/>
</package>
<package name="PIN_1X10_S">
<description>8 pin pinheader
&lt;br/&gt;&lt;br/&gt;
Generated by 'madparts'.&lt;br/&gt;
Id: d764d25998294caea4e058da57af2307
 parent: 0ecb97821889480bbca498d3d59bebd2</description>
<text x="0" y="13.7" size="1" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-13.7" size="1" layer="27" align="center">&gt;VALUE</text>
<pad name="1" x="0" y="11.43" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="10.795" x2="1.27" y2="12.065" width="0.15" layer="21"/>
<wire x1="0.635" y1="12.7" x2="-0.635" y2="12.7" width="0.15" layer="21"/>
<wire x1="-1.27" y1="12.065" x2="-1.27" y2="10.795" width="0.15" layer="21"/>
<wire x1="-0.635" y1="10.16" x2="0.635" y2="10.16" width="0.15" layer="21"/>
<wire x1="1.27" y1="12.065" x2="0.635" y2="12.7" width="0.15" layer="21"/>
<wire x1="-0.635" y1="12.7" x2="-1.27" y2="12.065" width="0.15" layer="21"/>
<wire x1="-1.27" y1="10.795" x2="-0.635" y2="10.16" width="0.15" layer="21"/>
<wire x1="0.635" y1="10.16" x2="1.27" y2="10.795" width="0.15" layer="21"/>
<pad name="2" x="0" y="8.89" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="8.255" x2="1.27" y2="9.525" width="0.15" layer="21"/>
<wire x1="0.635" y1="10.16" x2="-0.635" y2="10.16" width="0.15" layer="21"/>
<wire x1="-1.27" y1="9.525" x2="-1.27" y2="8.255" width="0.15" layer="21"/>
<wire x1="-0.635" y1="7.62" x2="0.635" y2="7.62" width="0.15" layer="21"/>
<wire x1="1.27" y1="9.525" x2="0.635" y2="10.16" width="0.15" layer="21"/>
<wire x1="-0.635" y1="10.16" x2="-1.27" y2="9.525" width="0.15" layer="21"/>
<wire x1="-1.27" y1="8.255" x2="-0.635" y2="7.62" width="0.15" layer="21"/>
<wire x1="0.635" y1="7.62" x2="1.27" y2="8.255" width="0.15" layer="21"/>
<pad name="3" x="0" y="6.35" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="5.715" x2="1.27" y2="6.985" width="0.15" layer="21"/>
<wire x1="0.635" y1="7.62" x2="-0.635" y2="7.62" width="0.15" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="5.715" width="0.15" layer="21"/>
<wire x1="-0.635" y1="5.08" x2="0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="1.27" y1="6.985" x2="0.635" y2="7.62" width="0.15" layer="21"/>
<wire x1="-0.635" y1="7.62" x2="-1.27" y2="6.985" width="0.15" layer="21"/>
<wire x1="-1.27" y1="5.715" x2="-0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="0.635" y1="5.08" x2="1.27" y2="5.715" width="0.15" layer="21"/>
<pad name="4" x="0" y="3.81" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="4.445" width="0.15" layer="21"/>
<wire x1="0.635" y1="5.08" x2="-0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="3.175" width="0.15" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="1.27" y1="4.445" x2="0.635" y2="5.08" width="0.15" layer="21"/>
<wire x1="-0.635" y1="5.08" x2="-1.27" y2="4.445" width="0.15" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="3.175" width="0.15" layer="21"/>
<pad name="5" x="0" y="1.27" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="1.905" width="0.15" layer="21"/>
<wire x1="0.635" y1="2.54" x2="-0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="0.635" width="0.15" layer="21"/>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.15" layer="21"/>
<wire x1="1.27" y1="1.905" x2="0.635" y2="2.54" width="0.15" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="-1.27" y2="1.905" width="0.15" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="0" width="0.15" layer="21"/>
<wire x1="0.635" y1="0" x2="1.27" y2="0.635" width="0.15" layer="21"/>
<pad name="6" x="0" y="-1.27" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="-0.635" width="0.15" layer="21"/>
<wire x1="0.635" y1="0" x2="-0.635" y2="0" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="-1.905" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="0" width="0.15" layer="21"/>
<wire x1="-0.635" y1="0" x2="-1.27" y2="-0.635" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.27" y2="-1.905" width="0.15" layer="21"/>
<pad name="7" x="0" y="-3.81" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="-4.445" x2="1.27" y2="-3.175" width="0.15" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-3.175" x2="-1.27" y2="-4.445" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-5.08" x2="0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="1.27" y1="-3.175" x2="0.635" y2="-2.54" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.27" y2="-3.175" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-4.445" x2="-0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="0.635" y1="-5.08" x2="1.27" y2="-4.445" width="0.15" layer="21"/>
<pad name="8" x="0" y="-6.35" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="-6.985" x2="1.27" y2="-5.715" width="0.15" layer="21"/>
<wire x1="0.635" y1="-5.08" x2="-0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-5.715" x2="-1.27" y2="-6.985" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-7.62" x2="0.635" y2="-7.62" width="0.15" layer="21"/>
<wire x1="1.27" y1="-5.715" x2="0.635" y2="-5.08" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-5.08" x2="-1.27" y2="-5.715" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-6.985" x2="-0.635" y2="-7.62" width="0.15" layer="21"/>
<wire x1="0.635" y1="-7.62" x2="1.27" y2="-6.985" width="0.15" layer="21"/>
<pad name="9" x="0" y="-8.89" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="-9.525" x2="1.27" y2="-8.255" width="0.15" layer="21"/>
<wire x1="0.635" y1="-7.62" x2="-0.635" y2="-7.62" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-8.255" x2="-1.27" y2="-9.525" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-10.16" x2="0.635" y2="-10.16" width="0.15" layer="21"/>
<wire x1="1.27" y1="-8.255" x2="0.635" y2="-7.62" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-7.62" x2="-1.27" y2="-8.255" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-9.525" x2="-0.635" y2="-10.16" width="0.15" layer="21"/>
<wire x1="0.635" y1="-10.16" x2="1.27" y2="-9.525" width="0.15" layer="21"/>
<pad name="10" x="0" y="-11.43" drill="1" diameter="1.906"/>
<wire x1="1.27" y1="-12.065" x2="1.27" y2="-10.795" width="0.15" layer="21"/>
<wire x1="0.635" y1="-10.16" x2="-0.635" y2="-10.16" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-10.795" x2="-1.27" y2="-12.065" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-12.7" x2="0.635" y2="-12.7" width="0.15" layer="21"/>
<wire x1="1.27" y1="-10.795" x2="0.635" y2="-10.16" width="0.15" layer="21"/>
<wire x1="-0.635" y1="-10.16" x2="-1.27" y2="-10.795" width="0.15" layer="21"/>
<wire x1="-1.27" y1="-12.065" x2="-0.635" y2="-12.7" width="0.15" layer="21"/>
<wire x1="0.635" y1="-12.7" x2="1.27" y2="-12.065" width="0.15" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ATXMEGA5">
<pin name="GND" x="-25.4" y="-68.58" length="short" rot="R90"/>
<pin name="PA0/ADC0/AC0/AREF" x="-30.48" y="12.7" length="short"/>
<pin name="PA1/ADC1/AC1" x="-30.48" y="7.62" length="short"/>
<pin name="PA2/ADC2/DAC0/AC2" x="-30.48" y="2.54" length="short"/>
<pin name="PA3/ADC3/DAC1/AC3" x="-30.48" y="-2.54" length="short"/>
<pin name="PA4/ADC4/AC4" x="-30.48" y="-7.62" length="short"/>
<pin name="PA5/ADC5/AC5" x="-30.48" y="-12.7" length="short"/>
<pin name="PA6/ADC6/AC6/AC1OUT" x="-30.48" y="-17.78" length="short"/>
<pin name="PA7/ADC7/AC7/AC0OUT" x="-30.48" y="-22.86" length="short"/>
<pin name="PC0/OC4A/OC4ALS/SDA/IN1/OUT0" x="-30.48" y="-27.94" length="short"/>
<pin name="PC1/OC4B/OC4AHS/XCK0/SDL/IN2" x="-30.48" y="-30.48" length="short"/>
<pin name="PC2/OC4C/OC4BLS/RXD0/IN0" x="-30.48" y="-33.02" length="short"/>
<pin name="PC3/OC4D/OC4BHS/TXD0/IN3" x="-30.48" y="-35.56" length="short"/>
<pin name="PC4/OC4A/OC4CLS/OC5A/!SS!/IN1/OUT0/EXTCLK" x="-30.48" y="-38.1" length="short"/>
<pin name="PC5/OC4B/OC4CHS/OC5B/XCK0/SCK/IN2" x="-30.48" y="-40.64" length="short"/>
<pin name="PC6/OC4C/OC4DLS/RXD0/MISO/IN0/AC1OUT" x="-30.48" y="-43.18" length="short"/>
<pin name="PC7/OC4D/OC4DHS/TXD0/MOSI/IN3/AC0OUT" x="-30.48" y="-45.72" length="short"/>
<pin name="GND1" x="-22.86" y="-68.58" length="short" rot="R90"/>
<pin name="PD0/ADC8/SDA/IN1/OUT0/AREF" x="38.1" y="10.16" length="short" rot="R180"/>
<pin name="PD1/ADC9/XCK0/SCL/IN2" x="38.1" y="5.08" length="short" rot="R180"/>
<pin name="PD2/ADC10/RXD0/IN0/OC0" x="38.1" y="0" length="short" rot="R180"/>
<pin name="PD3/ADC11/TXD0/IN3/OC1" x="38.1" y="-5.08" length="short" rot="R180"/>
<pin name="PD4/ADC12/OC5A/IN1/OUT0/CLKOUT/EVOUT" x="38.1" y="-10.16" length="short" rot="R180"/>
<pin name="PD5/ADC13/OC5B/XCK0/IN2" x="38.1" y="-15.24" length="short" rot="R180"/>
<pin name="PD6/ADC14/RDX0/IN0/RTCOUT/AC1OUT" x="38.1" y="-20.32" length="short" rot="R180"/>
<pin name="PD7/ADC15/TXD0/IN3/CLKOUT/EVOUT/AC0OUT" x="38.1" y="-25.4" length="short" rot="R180"/>
<pin name="VCC" x="-25.4" y="27.94" length="short" rot="R270"/>
<pin name="AVCC" x="-22.86" y="27.94" length="short" rot="R270"/>
<pin name="PDIDATA" x="-30.48" y="-50.8" length="short"/>
<pin name="!RESET!/PDICLK" x="-30.48" y="-48.26" length="short"/>
<pin name="PR0/XTAL2/TOSC2/CLKOUT/EVOUT/RTCOUT/AC1OUT" x="-30.48" y="-53.34" length="short"/>
<pin name="PR1/XTAL1/TOSC1/EXTCLK/AC0OUT" x="-30.48" y="-55.88" length="short"/>
<wire x1="-27.94" y1="25.4" x2="-27.94" y2="-66.04" width="0.254" layer="94"/>
<wire x1="-27.94" y1="-66.04" x2="35.56" y2="-66.04" width="0.254" layer="94"/>
<wire x1="35.56" y1="-66.04" x2="35.56" y2="25.4" width="0.254" layer="94"/>
<wire x1="35.56" y1="25.4" x2="-27.94" y2="25.4" width="0.254" layer="94"/>
</symbol>
<symbol name="PIN2X3_SAMTEC_TSM_SMD">
<pin name="1" x="-7.62" y="2.54" length="short"/>
<pin name="2" x="7.62" y="2.54" length="short" rot="R180"/>
<pin name="3" x="-7.62" y="0" length="short"/>
<pin name="4" x="7.62" y="0" length="short" rot="R180"/>
<pin name="5" x="-7.62" y="-2.54" length="short"/>
<pin name="6" x="7.62" y="-2.54" length="short" rot="R180"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<text x="-5.08" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-10.16" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
<symbol name="CAPACITOR">
<pin name="2" x="0" y="-2.54" visible="off" length="point" direction="pas" rot="R90"/>
<pin name="1" x="0" y="2.54" visible="off" length="point" direction="pas" rot="R90"/>
<wire x1="0" y1="-2.54" x2="0" y2="-0.5" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="0.5" width="0.254" layer="94"/>
<text x="-3.048" y="1.27" size="1.016" layer="95">&gt;NAME</text>
<text x="-2.952" y="-1.73" size="1.016" layer="96">&gt;VALUE</text>
<rectangle x1="-1.27" y1="0.125" x2="1.27" y2="0.5" layer="94"/>
<rectangle x1="-1.27" y1="-0.5" x2="1.27" y2="-0.125" layer="94"/>
</symbol>
<symbol name="BUTTON_ALPS_5.2_SMD">
<pin name="1" x="-5.08" y="2.54" length="short"/>
<pin name="2" x="5.08" y="2.54" length="short" rot="R180"/>
<pin name="4" x="5.08" y="-2.54" length="short" rot="R180"/>
<pin name="3" x="-5.08" y="-2.54" length="short"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<text x="-2.54" y="7.62" size="1.27" layer="95">&gt;NAME</text>
<text x="-2.54" y="-7.62" size="1.27" layer="96">&gt;VALUE</text>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-0.635" width="0.254" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-3.81" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="RESISTOR">
<pin name="2" x="2.54" y="0" visible="off" length="point" direction="pas" rot="R180"/>
<pin name="1" x="-2.54" y="0" visible="off" length="point" direction="pas" rot="R180"/>
<wire x1="2.54" y1="0" x2="1.385" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.385" y2="0" width="0.254" layer="94"/>
<text x="-0.127" y="1.905" size="1.016" layer="95" rot="R180" align="center">&gt;NAME</text>
<text x="-0.127" y="-1.905" size="1.016" layer="96" align="center">&gt;VALUE</text>
<wire x1="-1.25" y1="-0.5" x2="-1.25" y2="0.5" width="0.254" layer="94"/>
<wire x1="-1.25" y1="0.5" x2="1.25" y2="0.5" width="0.254" layer="94"/>
<wire x1="1.25" y1="0.5" x2="1.25" y2="-0.5" width="0.254" layer="94"/>
<wire x1="1.25" y1="-0.5" x2="-1.25" y2="-0.5" width="0.254" layer="94"/>
</symbol>
<symbol name="PINH1X6">
<pin name="1" x="-5.08" y="7.62" visible="off" length="short"/>
<pin name="2" x="-5.08" y="5.08" visible="off" length="short"/>
<pin name="3" x="-5.08" y="2.54" visible="off" length="short"/>
<pin name="4" x="-5.08" y="0" visible="off" length="short"/>
<pin name="5" x="-5.08" y="-2.54" visible="off" length="short"/>
<pin name="6" x="-5.08" y="-5.08" visible="off" length="short"/>
<wire x1="-2.54" y1="8.89" x2="-2.54" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-6.35" x2="0" y2="-6.35" width="0.254" layer="94"/>
<wire x1="0" y1="-6.35" x2="0" y2="8.89" width="0.254" layer="94"/>
<wire x1="0" y1="8.89" x2="-2.54" y2="8.89" width="0.254" layer="94"/>
<text x="-6.985" y="10.16" size="2.54" layer="95">&gt;NAME</text>
<text x="-6.985" y="-9.525" size="2.54" layer="95">&gt;VALUE</text>
<text x="-3.81" y="8.255" size="1.27" layer="97">1</text>
<text x="-3.81" y="5.715" size="1.27" layer="97">2</text>
<text x="-3.81" y="3.175" size="1.27" layer="97">3</text>
<text x="-3.81" y="0.635" size="1.27" layer="97">4</text>
<text x="-3.81" y="-1.905" size="1.27" layer="97">5</text>
<text x="-3.81" y="-4.445" size="1.27" layer="97">6</text>
</symbol>
<symbol name="PIN1X10">
<pin name="P$1" x="-2.54" y="12.7" visible="pad" length="short"/>
<pin name="P$2" x="-2.54" y="10.16" visible="pad" length="short"/>
<pin name="P$3" x="-2.54" y="7.62" visible="pad" length="short"/>
<pin name="P$4" x="-2.54" y="5.08" visible="pad" length="short"/>
<pin name="P$5" x="-2.54" y="2.54" visible="pad" length="short"/>
<pin name="P$6" x="-2.54" y="0" visible="pad" length="short"/>
<pin name="P$7" x="-2.54" y="-2.54" visible="pad" length="short"/>
<pin name="P$8" x="-2.54" y="-5.08" visible="pad" length="short"/>
<pin name="P$9" x="-2.54" y="-7.62" visible="pad" length="short"/>
<pin name="P$10" x="-2.54" y="-10.16" visible="pad" length="short"/>
<wire x1="0" y1="15.24" x2="0" y2="-12.7" width="0.254" layer="94"/>
<wire x1="0" y1="-12.7" x2="2.54" y2="-12.7" width="0.254" layer="94"/>
<wire x1="2.54" y1="-12.7" x2="2.54" y2="15.24" width="0.254" layer="94"/>
<wire x1="2.54" y1="15.24" x2="0" y2="15.24" width="0.254" layer="94"/>
<text x="-2.54" y="17.78" size="1.27" layer="96">&gt;NAME</text>
<text x="-2.54" y="-15.24" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATXMEGAE5" prefix="U" uservalue="yes">
<gates>
<gate name="G$1" symbol="ATXMEGA5" x="0" y="0"/>
</gates>
<devices>
<device name="AU" package="TQFP32">
<connects>
<connect gate="G$1" pin="!RESET!/PDICLK" pad="8"/>
<connect gate="G$1" pin="AVCC" pad="32"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="GND1" pad="18"/>
<connect gate="G$1" pin="PA0/ADC0/AC0/AREF" pad="6"/>
<connect gate="G$1" pin="PA1/ADC1/AC1" pad="5"/>
<connect gate="G$1" pin="PA2/ADC2/DAC0/AC2" pad="4"/>
<connect gate="G$1" pin="PA3/ADC3/DAC1/AC3" pad="3"/>
<connect gate="G$1" pin="PA4/ADC4/AC4" pad="2"/>
<connect gate="G$1" pin="PA5/ADC5/AC5" pad="31"/>
<connect gate="G$1" pin="PA6/ADC6/AC6/AC1OUT" pad="30"/>
<connect gate="G$1" pin="PA7/ADC7/AC7/AC0OUT" pad="29"/>
<connect gate="G$1" pin="PC0/OC4A/OC4ALS/SDA/IN1/OUT0" pad="16"/>
<connect gate="G$1" pin="PC1/OC4B/OC4AHS/XCK0/SDL/IN2" pad="15"/>
<connect gate="G$1" pin="PC2/OC4C/OC4BLS/RXD0/IN0" pad="14"/>
<connect gate="G$1" pin="PC3/OC4D/OC4BHS/TXD0/IN3" pad="13"/>
<connect gate="G$1" pin="PC4/OC4A/OC4CLS/OC5A/!SS!/IN1/OUT0/EXTCLK" pad="12"/>
<connect gate="G$1" pin="PC5/OC4B/OC4CHS/OC5B/XCK0/SCK/IN2" pad="11"/>
<connect gate="G$1" pin="PC6/OC4C/OC4DLS/RXD0/MISO/IN0/AC1OUT" pad="10"/>
<connect gate="G$1" pin="PC7/OC4D/OC4DHS/TXD0/MOSI/IN3/AC0OUT" pad="9"/>
<connect gate="G$1" pin="PD0/ADC8/SDA/IN1/OUT0/AREF" pad="28"/>
<connect gate="G$1" pin="PD1/ADC9/XCK0/SCL/IN2" pad="27"/>
<connect gate="G$1" pin="PD2/ADC10/RXD0/IN0/OC0" pad="26"/>
<connect gate="G$1" pin="PD3/ADC11/TXD0/IN3/OC1" pad="25"/>
<connect gate="G$1" pin="PD4/ADC12/OC5A/IN1/OUT0/CLKOUT/EVOUT" pad="24"/>
<connect gate="G$1" pin="PD5/ADC13/OC5B/XCK0/IN2" pad="23"/>
<connect gate="G$1" pin="PD6/ADC14/RDX0/IN0/RTCOUT/AC1OUT" pad="22"/>
<connect gate="G$1" pin="PD7/ADC15/TXD0/IN3/CLKOUT/EVOUT/AC0OUT" pad="21"/>
<connect gate="G$1" pin="PDIDATA" pad="7"/>
<connect gate="G$1" pin="PR0/XTAL2/TOSC2/CLKOUT/EVOUT/RTCOUT/AC1OUT" pad="20"/>
<connect gate="G$1" pin="PR1/XTAL1/TOSC1/EXTCLK/AC0OUT" pad="19"/>
<connect gate="G$1" pin="VCC" pad="17"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN2X3" prefix="JP" uservalue="yes">
<gates>
<gate name="G$1" symbol="PIN2X3_SAMTEC_TSM_SMD" x="0" y="0"/>
</gates>
<devices>
<device name="SAMTEC_TSM_SMD" package="PIN_2X3_SMD_SAMTEC_TSM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2X3ALT" package="PIN_2X3_ALT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ALT_S" package="PIN_2X3_ALT_S">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAPACITOR" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
<connect gate="G$1" pin="2" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BUTTON_ALPS_5.2MM_SMD" prefix="B" uservalue="yes">
<gates>
<gate name="G$1" symbol="BUTTON_ALPS_5.2_SMD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BUTTON_ALPS_SMD_5.2MM_SKQG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="0603" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN1X6" prefix="JP" uservalue="yes">
<gates>
<gate name="G$1" symbol="PINH1X6" x="0" y="0"/>
</gates>
<devices>
<device name="PTH" package="PIN_1X6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_SMALL" package="PIN_1X6_S">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIN1X10" prefix="JP" uservalue="yes">
<gates>
<gate name="G$1" symbol="PIN1X10" x="0" y="0"/>
</gates>
<devices>
<device name="PTH_S" package="PIN_1X10_S">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$10" pad="10"/>
<connect gate="G$1" pin="P$2" pad="2"/>
<connect gate="G$1" pin="P$3" pad="3"/>
<connect gate="G$1" pin="P$4" pad="4"/>
<connect gate="G$1" pin="P$5" pad="5"/>
<connect gate="G$1" pin="P$6" pad="6"/>
<connect gate="G$1" pin="P$7" pad="7"/>
<connect gate="G$1" pin="P$8" pad="8"/>
<connect gate="G$1" pin="P$9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="inductor-neosid">
<description>&lt;b&gt;Neosid Chokes and Transformers&lt;/b&gt;&lt;p&gt;

Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Electronic Component Book, Part 2 : Chokes, Fixed Value Inductors
&lt;li&gt;Part 3 : Filters, Coil Assemblies, Thermoplastic Parts
&lt;li&gt;Part 4 : SMD Filters, Coils, Fixed Value Inductors
&lt;li&gt;www.neosid.de
&lt;/ul&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SM-1206">
<description>SMD CHIP &lt;B&gt;INDUCTOR&lt;/B&gt;&lt;p&gt;
body 1206</description>
<wire x1="1.3" y1="0.7" x2="1.3" y2="0.6" width="0.2032" layer="51"/>
<wire x1="1.3" y1="0.6" x2="1.3" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.3" y1="-0.6" x2="1.3" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="1.3" y1="-0.7" x2="2.1" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="2.1" y1="-0.7" x2="2.1" y2="0.7" width="0.2032" layer="51"/>
<wire x1="2.1" y1="0.7" x2="1.3" y2="0.7" width="0.2032" layer="51"/>
<wire x1="-2.1" y1="0.7" x2="-2.1" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="-2.1" y1="-0.7" x2="-1.3" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="-0.7" x2="-1.3" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="-0.6" x2="-1.3" y2="0.6" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="0.6" x2="-1.3" y2="0.7" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="0.7" x2="-2.1" y2="0.7" width="0.2032" layer="51"/>
<wire x1="-1.3" y1="-0.6" x2="-0.9" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="-0.9" y1="-0.6" x2="0.9" y2="-0.6" width="0.2032" layer="21"/>
<wire x1="0.9" y1="-0.6" x2="1.3" y2="-0.6" width="0.2032" layer="51"/>
<wire x1="1.3" y1="0.6" x2="0.9" y2="0.6" width="0.2032" layer="51"/>
<wire x1="0.9" y1="0.6" x2="-0.9" y2="0.6" width="0.2032" layer="21"/>
<wire x1="-0.9" y1="0.6" x2="-1.3" y2="0.6" width="0.2032" layer="51"/>
<smd name="1" x="-1.65" y="0" dx="1.2" dy="1.8" layer="1"/>
<smd name="2" x="1.65" y="0" dx="1.2" dy="1.8" layer="1"/>
<text x="-2.143" y="0.997" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.208" y="-2.308" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="L">
<text x="-3.81" y="1.778" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.556" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-3.81" y1="-1.27" x2="3.81" y2="1.27" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SM-1206" prefix="L" uservalue="yes">
<description>&lt;b&gt;INDUCTOR&lt;/b&gt;&lt;p&gt;
SMD chip inductor</description>
<gates>
<gate name="G$1" symbol="L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SM-1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="01jyd" deviceset="ATXMEGAE5" device="AU"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="JPP" library="01jyd" deviceset="PIN2X3" device="ALT_S"/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="L1" library="inductor-neosid" deviceset="SM-1206" device="" value="10uH/0OHM"/>
<part name="C1" library="01jyd" deviceset="CAPACITOR" device="0603" value="100nF"/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="C2" library="01jyd" deviceset="CAPACITOR" device="0603" value="100nF"/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="C4" library="01jyd" deviceset="CAPACITOR" device="0603" value="100nF/NC"/>
<part name="C5" library="01jyd" deviceset="CAPACITOR" device="0603" value="100nF/NC"/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="B1" library="01jyd" deviceset="BUTTON_ALPS_5.2MM_SMD" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="R1" library="01jyd" deviceset="RESISTOR" device="0603"/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="JPR" library="01jyd" deviceset="PIN1X6" device="PTH_SMALL"/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="C6" library="01jyd" deviceset="CAPACITOR" device="0603" value="100nF"/>
<part name="C7" library="01jyd" deviceset="CAPACITOR" device="1206" value="47uF"/>
<part name="JPA" library="01jyd" deviceset="PIN1X10" device="PTH_S"/>
<part name="JPC" library="01jyd" deviceset="PIN1X10" device="PTH_S"/>
<part name="JPD" library="01jyd" deviceset="PIN1X10" device="PTH_S"/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="P+7" library="supply1" deviceset="VCC" device=""/>
<part name="JPM" library="01jyd" deviceset="PIN1X6" device="PTH_SMALL"/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="P+8" library="supply1" deviceset="VCC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="5.08" y="43.18"/>
<instance part="GND1" gate="1" x="-20.32" y="-33.02"/>
<instance part="JPP" gate="G$1" x="-96.52" y="50.8"/>
<instance part="P+1" gate="VCC" x="-86.36" y="60.96"/>
<instance part="P+2" gate="VCC" x="-20.32" y="88.9"/>
<instance part="L1" gate="G$1" x="-12.7" y="76.2"/>
<instance part="C1" gate="G$1" x="0" y="81.28"/>
<instance part="GND2" gate="1" x="0" y="71.12"/>
<instance part="C2" gate="G$1" x="-30.48" y="71.12"/>
<instance part="GND3" gate="1" x="-86.36" y="38.1"/>
<instance part="GND4" gate="1" x="-30.48" y="63.5"/>
<instance part="C4" gate="G$1" x="55.88" y="50.8"/>
<instance part="C5" gate="G$1" x="-38.1" y="53.34" rot="R180"/>
<instance part="GND5" gate="1" x="-38.1" y="45.72"/>
<instance part="GND6" gate="1" x="55.88" y="43.18"/>
<instance part="B1" gate="G$1" x="-124.46" y="45.72"/>
<instance part="GND7" gate="1" x="-116.84" y="38.1"/>
<instance part="R1" gate="G$1" x="-116.84" y="53.34" rot="R90"/>
<instance part="P+3" gate="VCC" x="-116.84" y="60.96"/>
<instance part="JPR" gate="G$1" x="-43.18" y="25.4"/>
<instance part="GND8" gate="1" x="-50.8" y="15.24"/>
<instance part="P+4" gate="VCC" x="-55.88" y="38.1"/>
<instance part="C6" gate="G$1" x="-68.58" y="22.86"/>
<instance part="C7" gate="G$1" x="-76.2" y="22.86"/>
<instance part="JPA" gate="G$1" x="-109.22" y="-7.62"/>
<instance part="JPC" gate="G$1" x="-88.9" y="-7.62"/>
<instance part="JPD" gate="G$1" x="-68.58" y="-7.62"/>
<instance part="GND9" gate="1" x="-73.66" y="-25.4"/>
<instance part="GND10" gate="1" x="-93.98" y="-25.4"/>
<instance part="GND11" gate="1" x="-114.3" y="-25.4"/>
<instance part="P+5" gate="VCC" x="-81.28" y="15.24"/>
<instance part="P+6" gate="VCC" x="-101.6" y="15.24"/>
<instance part="P+7" gate="VCC" x="-121.92" y="15.24"/>
<instance part="JPM" gate="G$1" x="-43.18" y="-12.7"/>
<instance part="GND12" gate="1" x="-50.8" y="-25.4"/>
<instance part="P+8" gate="VCC" x="-58.42" y="7.62"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="U1" gate="G$1" pin="GND1"/>
<wire x1="-20.32" y1="-30.48" x2="-20.32" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-27.94" x2="-17.78" y2="-25.4" width="0.1524" layer="91"/>
<junction x="-20.32" y="-27.94"/>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="-20.32" y1="-27.94" x2="-20.32" y2="-25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="0" y1="78.74" x2="0" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JPP" gate="G$1" pin="6"/>
<wire x1="-88.9" y1="48.26" x2="-86.36" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="48.26" x2="-86.36" y2="40.64" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="-30.48" y1="68.58" x2="-30.48" y2="66.04" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="-38.1" y1="50.8" x2="-38.1" y2="48.26" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="55.88" y1="48.26" x2="55.88" y2="45.72" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="4"/>
<wire x1="-119.38" y1="43.18" x2="-116.84" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-116.84" y1="43.18" x2="-116.84" y2="40.64" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JPR" gate="G$1" pin="6"/>
<wire x1="-48.26" y1="20.32" x2="-50.8" y2="20.32" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="-50.8" y1="20.32" x2="-50.8" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="20.32" x2="-66.04" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="20.32" x2="-66.04" y2="17.78" width="0.1524" layer="91"/>
<junction x="-50.8" y="20.32"/>
<wire x1="-66.04" y1="17.78" x2="-68.58" y2="17.78" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="-68.58" y1="17.78" x2="-68.58" y2="20.32" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="-68.58" y1="17.78" x2="-76.2" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="17.78" x2="-76.2" y2="20.32" width="0.1524" layer="91"/>
<junction x="-68.58" y="17.78"/>
</segment>
<segment>
<pinref part="JPD" gate="G$1" pin="P$10"/>
<wire x1="-71.12" y1="-17.78" x2="-73.66" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-17.78" x2="-73.66" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JPC" gate="G$1" pin="P$10"/>
<wire x1="-91.44" y1="-17.78" x2="-93.98" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="-17.78" x2="-93.98" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JPA" gate="G$1" pin="P$10"/>
<wire x1="-111.76" y1="-17.78" x2="-114.3" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-114.3" y1="-17.78" x2="-114.3" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JPM" gate="G$1" pin="6"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="-48.26" y1="-17.78" x2="-50.8" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-17.78" x2="-50.8" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PDI" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PDIDATA"/>
<wire x1="-25.4" y1="-7.62" x2="-30.48" y2="-7.62" width="0.1524" layer="91"/>
<label x="-30.48" y="-7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JPP" gate="G$1" pin="1"/>
<wire x1="-104.14" y1="53.34" x2="-109.22" y2="53.34" width="0.1524" layer="91"/>
<label x="-109.22" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JPM" gate="G$1" pin="2"/>
<wire x1="-48.26" y1="-7.62" x2="-53.34" y2="-7.62" width="0.1524" layer="91"/>
<label x="-53.34" y="-7.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="!RESET" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="!RESET!/PDICLK"/>
<wire x1="-25.4" y1="-5.08" x2="-30.48" y2="-5.08" width="0.1524" layer="91"/>
<label x="-33.02" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JPP" gate="G$1" pin="5"/>
<wire x1="-104.14" y1="48.26" x2="-116.84" y2="48.26" width="0.1524" layer="91"/>
<label x="-111.76" y="48.26" size="1.778" layer="95"/>
<pinref part="B1" gate="G$1" pin="2"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-116.84" y1="48.26" x2="-119.38" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-116.84" y1="50.8" x2="-116.84" y2="48.26" width="0.1524" layer="91"/>
<junction x="-116.84" y="48.26"/>
</segment>
<segment>
<pinref part="JPM" gate="G$1" pin="3"/>
<wire x1="-48.26" y1="-10.16" x2="-53.34" y2="-10.16" width="0.1524" layer="91"/>
<label x="-53.34" y="-10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="JPP" gate="G$1" pin="2"/>
<wire x1="-88.9" y1="53.34" x2="-86.36" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="53.34" x2="-86.36" y2="58.42" width="0.1524" layer="91"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VCC"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="-20.32" y1="86.36" x2="-20.32" y2="76.2" width="0.1524" layer="91"/>
<pinref part="L1" gate="G$1" pin="1"/>
<wire x1="-20.32" y1="76.2" x2="-20.32" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="76.2" x2="-17.78" y2="76.2" width="0.1524" layer="91"/>
<junction x="-20.32" y="76.2"/>
<wire x1="-20.32" y1="76.2" x2="-30.48" y2="76.2" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="-30.48" y1="76.2" x2="-30.48" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-116.84" y1="55.88" x2="-116.84" y2="58.42" width="0.1524" layer="91"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="JPR" gate="G$1" pin="4"/>
<wire x1="-48.26" y1="25.4" x2="-55.88" y2="25.4" width="0.1524" layer="91"/>
<label x="-53.34" y="25.4" size="1.778" layer="95"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<wire x1="-55.88" y1="25.4" x2="-55.88" y2="35.56" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="-68.58" y1="25.4" x2="-68.58" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="27.94" x2="-66.04" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="27.94" x2="-66.04" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="25.4" x2="-55.88" y2="25.4" width="0.1524" layer="91"/>
<junction x="-55.88" y="25.4"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="-76.2" y1="25.4" x2="-76.2" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="27.94" x2="-68.58" y2="27.94" width="0.1524" layer="91"/>
<junction x="-68.58" y="27.94"/>
</segment>
<segment>
<pinref part="JPA" gate="G$1" pin="P$9"/>
<wire x1="-111.76" y1="-15.24" x2="-121.92" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="P+7" gate="VCC" pin="VCC"/>
<wire x1="-121.92" y1="-15.24" x2="-121.92" y2="12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JPC" gate="G$1" pin="P$9"/>
<wire x1="-91.44" y1="-15.24" x2="-101.6" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
<wire x1="-101.6" y1="-15.24" x2="-101.6" y2="12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JPD" gate="G$1" pin="P$9"/>
<wire x1="-71.12" y1="-15.24" x2="-81.28" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<wire x1="-81.28" y1="-15.24" x2="-81.28" y2="12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JPM" gate="G$1" pin="1"/>
<pinref part="P+8" gate="VCC" pin="VCC"/>
<wire x1="-48.26" y1="-5.08" x2="-58.42" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-5.08" x2="-58.42" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="AVCC" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="AVCC"/>
<wire x1="-17.78" y1="71.12" x2="-17.78" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="73.66" x2="-7.62" y2="73.66" width="0.1524" layer="91"/>
<pinref part="L1" gate="G$1" pin="2"/>
<wire x1="-7.62" y1="73.66" x2="-7.62" y2="76.2" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="76.2" x2="-5.08" y2="76.2" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="76.2" x2="-5.08" y2="86.36" width="0.1524" layer="91"/>
<junction x="-7.62" y="76.2"/>
<wire x1="0" y1="86.36" x2="-5.08" y2="86.36" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="0" y1="86.36" x2="0" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="JPR" gate="G$1" pin="5"/>
<wire x1="-48.26" y1="22.86" x2="-60.96" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="22.86" x2="-60.96" y2="33.02" width="0.1524" layer="91"/>
<pinref part="JPR" gate="G$1" pin="1"/>
<wire x1="-60.96" y1="33.02" x2="-48.26" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PA0" class="0">
<segment>
<pinref part="JPA" gate="G$1" pin="P$1"/>
<wire x1="-111.76" y1="5.08" x2="-116.84" y2="5.08" width="0.1524" layer="91"/>
<label x="-116.84" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="U1" gate="G$1" pin="PA0/ADC0/AC0/AREF"/>
<wire x1="-38.1" y1="55.88" x2="-25.4" y2="55.88" width="0.1524" layer="91"/>
<label x="-30.48" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="PA1" class="0">
<segment>
<pinref part="JPA" gate="G$1" pin="P$2"/>
<wire x1="-111.76" y1="2.54" x2="-116.84" y2="2.54" width="0.1524" layer="91"/>
<label x="-116.84" y="2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PA1/ADC1/AC1"/>
<wire x1="-25.4" y1="50.8" x2="-30.48" y2="50.8" width="0.1524" layer="91"/>
<label x="-30.48" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="PA2" class="0">
<segment>
<pinref part="JPA" gate="G$1" pin="P$3"/>
<wire x1="-111.76" y1="0" x2="-116.84" y2="0" width="0.1524" layer="91"/>
<label x="-116.84" y="0" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PA2/ADC2/DAC0/AC2"/>
<wire x1="-25.4" y1="45.72" x2="-30.48" y2="45.72" width="0.1524" layer="91"/>
<label x="-30.48" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="PA3" class="0">
<segment>
<pinref part="JPA" gate="G$1" pin="P$4"/>
<wire x1="-111.76" y1="-2.54" x2="-116.84" y2="-2.54" width="0.1524" layer="91"/>
<label x="-116.84" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PA3/ADC3/DAC1/AC3"/>
<wire x1="-25.4" y1="40.64" x2="-30.48" y2="40.64" width="0.1524" layer="91"/>
<label x="-30.48" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="PA4" class="0">
<segment>
<pinref part="JPA" gate="G$1" pin="P$5"/>
<wire x1="-111.76" y1="-5.08" x2="-116.84" y2="-5.08" width="0.1524" layer="91"/>
<label x="-116.84" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PA4/ADC4/AC4"/>
<wire x1="-25.4" y1="35.56" x2="-30.48" y2="35.56" width="0.1524" layer="91"/>
<label x="-30.48" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="PA5" class="0">
<segment>
<pinref part="JPA" gate="G$1" pin="P$6"/>
<wire x1="-111.76" y1="-7.62" x2="-116.84" y2="-7.62" width="0.1524" layer="91"/>
<label x="-116.84" y="-7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PA5/ADC5/AC5"/>
<wire x1="-25.4" y1="30.48" x2="-30.48" y2="30.48" width="0.1524" layer="91"/>
<label x="-30.48" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="PA6" class="0">
<segment>
<pinref part="JPA" gate="G$1" pin="P$7"/>
<wire x1="-111.76" y1="-10.16" x2="-116.84" y2="-10.16" width="0.1524" layer="91"/>
<label x="-116.84" y="-10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PA6/ADC6/AC6/AC1OUT"/>
<wire x1="-25.4" y1="25.4" x2="-30.48" y2="25.4" width="0.1524" layer="91"/>
<label x="-30.48" y="25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="PA7" class="0">
<segment>
<pinref part="JPA" gate="G$1" pin="P$8"/>
<wire x1="-111.76" y1="-12.7" x2="-116.84" y2="-12.7" width="0.1524" layer="91"/>
<label x="-116.84" y="-12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PA7/ADC7/AC7/AC0OUT"/>
<wire x1="-25.4" y1="20.32" x2="-30.48" y2="20.32" width="0.1524" layer="91"/>
<label x="-30.48" y="20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC0" class="0">
<segment>
<pinref part="JPC" gate="G$1" pin="P$1"/>
<wire x1="-91.44" y1="5.08" x2="-96.52" y2="5.08" width="0.1524" layer="91"/>
<label x="-96.52" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PC0/OC4A/OC4ALS/SDA/IN1/OUT0"/>
<wire x1="-25.4" y1="15.24" x2="-30.48" y2="15.24" width="0.1524" layer="91"/>
<label x="-30.48" y="15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC1" class="0">
<segment>
<pinref part="JPC" gate="G$1" pin="P$2"/>
<wire x1="-91.44" y1="2.54" x2="-96.52" y2="2.54" width="0.1524" layer="91"/>
<label x="-96.52" y="2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PC1/OC4B/OC4AHS/XCK0/SDL/IN2"/>
<wire x1="-25.4" y1="12.7" x2="-30.48" y2="12.7" width="0.1524" layer="91"/>
<label x="-30.48" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC2" class="0">
<segment>
<pinref part="JPC" gate="G$1" pin="P$3"/>
<wire x1="-91.44" y1="0" x2="-96.52" y2="0" width="0.1524" layer="91"/>
<label x="-96.52" y="0" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PC2/OC4C/OC4BLS/RXD0/IN0"/>
<wire x1="-25.4" y1="10.16" x2="-30.48" y2="10.16" width="0.1524" layer="91"/>
<label x="-30.48" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC3" class="0">
<segment>
<pinref part="JPC" gate="G$1" pin="P$4"/>
<wire x1="-91.44" y1="-2.54" x2="-96.52" y2="-2.54" width="0.1524" layer="91"/>
<label x="-96.52" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PC3/OC4D/OC4BHS/TXD0/IN3"/>
<wire x1="-25.4" y1="7.62" x2="-30.48" y2="7.62" width="0.1524" layer="91"/>
<label x="-30.48" y="7.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC4" class="0">
<segment>
<pinref part="JPC" gate="G$1" pin="P$5"/>
<wire x1="-91.44" y1="-5.08" x2="-96.52" y2="-5.08" width="0.1524" layer="91"/>
<label x="-96.52" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PC4/OC4A/OC4CLS/OC5A/!SS!/IN1/OUT0/EXTCLK"/>
<wire x1="-25.4" y1="5.08" x2="-30.48" y2="5.08" width="0.1524" layer="91"/>
<label x="-30.48" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC5" class="0">
<segment>
<pinref part="JPC" gate="G$1" pin="P$6"/>
<wire x1="-91.44" y1="-7.62" x2="-96.52" y2="-7.62" width="0.1524" layer="91"/>
<label x="-96.52" y="-7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PC5/OC4B/OC4CHS/OC5B/XCK0/SCK/IN2"/>
<wire x1="-25.4" y1="2.54" x2="-30.48" y2="2.54" width="0.1524" layer="91"/>
<label x="-30.48" y="2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC6" class="0">
<segment>
<pinref part="JPC" gate="G$1" pin="P$7"/>
<wire x1="-91.44" y1="-10.16" x2="-96.52" y2="-10.16" width="0.1524" layer="91"/>
<label x="-96.52" y="-10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PC6/OC4C/OC4DLS/RXD0/MISO/IN0/AC1OUT"/>
<wire x1="-25.4" y1="0" x2="-30.48" y2="0" width="0.1524" layer="91"/>
<label x="-30.48" y="0" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC7" class="0">
<segment>
<pinref part="JPC" gate="G$1" pin="P$8"/>
<wire x1="-91.44" y1="-12.7" x2="-96.52" y2="-12.7" width="0.1524" layer="91"/>
<label x="-96.52" y="-12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PC7/OC4D/OC4DHS/TXD0/MOSI/IN3/AC0OUT"/>
<wire x1="-25.4" y1="-2.54" x2="-30.48" y2="-2.54" width="0.1524" layer="91"/>
<label x="-30.48" y="-2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD0" class="0">
<segment>
<pinref part="JPD" gate="G$1" pin="P$1"/>
<wire x1="-71.12" y1="5.08" x2="-76.2" y2="5.08" width="0.1524" layer="91"/>
<label x="-76.2" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD0/ADC8/SDA/IN1/OUT0/AREF"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="43.18" y1="53.34" x2="55.88" y2="53.34" width="0.1524" layer="91"/>
<label x="43.18" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD1" class="0">
<segment>
<pinref part="JPD" gate="G$1" pin="P$2"/>
<wire x1="-71.12" y1="2.54" x2="-76.2" y2="2.54" width="0.1524" layer="91"/>
<label x="-76.2" y="2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD1/ADC9/XCK0/SCL/IN2"/>
<wire x1="43.18" y1="48.26" x2="48.26" y2="48.26" width="0.1524" layer="91"/>
<label x="43.18" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD2" class="0">
<segment>
<pinref part="JPD" gate="G$1" pin="P$3"/>
<wire x1="-71.12" y1="0" x2="-76.2" y2="0" width="0.1524" layer="91"/>
<label x="-76.2" y="0" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD2/ADC10/RXD0/IN0/OC0"/>
<wire x1="43.18" y1="43.18" x2="48.26" y2="43.18" width="0.1524" layer="91"/>
<label x="43.18" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD3" class="0">
<segment>
<pinref part="JPD" gate="G$1" pin="P$4"/>
<wire x1="-71.12" y1="-2.54" x2="-76.2" y2="-2.54" width="0.1524" layer="91"/>
<label x="-76.2" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD3/ADC11/TXD0/IN3/OC1"/>
<wire x1="43.18" y1="38.1" x2="48.26" y2="38.1" width="0.1524" layer="91"/>
<label x="43.18" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD4" class="0">
<segment>
<pinref part="JPD" gate="G$1" pin="P$5"/>
<wire x1="-71.12" y1="-5.08" x2="-76.2" y2="-5.08" width="0.1524" layer="91"/>
<label x="-76.2" y="-5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD4/ADC12/OC5A/IN1/OUT0/CLKOUT/EVOUT"/>
<wire x1="43.18" y1="33.02" x2="48.26" y2="33.02" width="0.1524" layer="91"/>
<label x="43.18" y="33.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD5" class="0">
<segment>
<pinref part="JPD" gate="G$1" pin="P$6"/>
<wire x1="-71.12" y1="-7.62" x2="-76.2" y2="-7.62" width="0.1524" layer="91"/>
<label x="-76.2" y="-7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD5/ADC13/OC5B/XCK0/IN2"/>
<wire x1="43.18" y1="27.94" x2="48.26" y2="27.94" width="0.1524" layer="91"/>
<label x="43.18" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD6" class="0">
<segment>
<pinref part="JPD" gate="G$1" pin="P$7"/>
<wire x1="-71.12" y1="-10.16" x2="-76.2" y2="-10.16" width="0.1524" layer="91"/>
<label x="-76.2" y="-10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD6/ADC14/RDX0/IN0/RTCOUT/AC1OUT"/>
<wire x1="43.18" y1="22.86" x2="48.26" y2="22.86" width="0.1524" layer="91"/>
<label x="43.18" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JPR" gate="G$1" pin="3"/>
<wire x1="-48.26" y1="27.94" x2="-53.34" y2="27.94" width="0.1524" layer="91"/>
<label x="-53.34" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD7" class="0">
<segment>
<pinref part="JPD" gate="G$1" pin="P$8"/>
<wire x1="-71.12" y1="-12.7" x2="-76.2" y2="-12.7" width="0.1524" layer="91"/>
<label x="-76.2" y="-12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD7/ADC15/TXD0/IN3/CLKOUT/EVOUT/AC0OUT"/>
<wire x1="43.18" y1="17.78" x2="48.26" y2="17.78" width="0.1524" layer="91"/>
<label x="43.18" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JPR" gate="G$1" pin="2"/>
<wire x1="-48.26" y1="30.48" x2="-53.34" y2="30.48" width="0.1524" layer="91"/>
<label x="-53.34" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="PR0" class="0">
<segment>
<pinref part="JPM" gate="G$1" pin="4"/>
<wire x1="-48.26" y1="-12.7" x2="-53.34" y2="-12.7" width="0.1524" layer="91"/>
<label x="-53.34" y="-12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PR0/XTAL2/TOSC2/CLKOUT/EVOUT/RTCOUT/AC1OUT"/>
<wire x1="-25.4" y1="-10.16" x2="-30.48" y2="-10.16" width="0.1524" layer="91"/>
<label x="-30.48" y="-10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="PR1" class="0">
<segment>
<pinref part="JPM" gate="G$1" pin="5"/>
<wire x1="-48.26" y1="-15.24" x2="-53.34" y2="-15.24" width="0.1524" layer="91"/>
<label x="-53.34" y="-15.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PR1/XTAL1/TOSC1/EXTCLK/AC0OUT"/>
<wire x1="-30.48" y1="-12.7" x2="-25.4" y2="-12.7" width="0.1524" layer="91"/>
<label x="-30.48" y="-12.7" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
