<?xml version="1.0"?>
<recipe>
 
	<instantiate from="src/app_package/model.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/models/${modelName}.java" />

	<instantiate from="src/app_package/adapter.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/ui/adapters/${adapterName}Adapter.java" />

      
    <instantiate from="res/layout/activity.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

 
	<open file="${srcOut}/ui/adapters/${adapterName}Adapter.java"/>
</recipe>
