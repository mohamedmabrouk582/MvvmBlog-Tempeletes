<?xml version="1.0"?>
<recipe>
 
	<instantiate from="src/app_package/Activity.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/ui/fragments/${activityName}Fragment.java" />

	<instantiate from="src/app_package/Viewmodel.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewModels/${viewModelPackage}/${activityName}ViewModel.java" />

	<instantiate from="src/app_package/Vmodel.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewModels/${viewModelPackage}/${activityName}Vmodel.java" />

        <instantiate from="src/app_package/api.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/api/${apiName}.java" />

       <instantiate from="src/app_package/View.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/views/${activityName}View.java" />

      <instantiate from="src/app_package/scope.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/scopes/${activityName}FragmentScope.java" />

      <instantiate from="src/app_package/module.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/modules/${activityName}FragmentModule.java" />

      <instantiate from="src/app_package/component.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/components/${activityName}FragmentComponent.java" />

    <instantiate from="res/layout/activity.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

        <instantiate from="res/icreload.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/drawable/ic_loading.xml" />
        <merge from="res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
 
	<open file="${srcOut}/ui/fragments/${activityName}Fragment.java"/>
</recipe>
