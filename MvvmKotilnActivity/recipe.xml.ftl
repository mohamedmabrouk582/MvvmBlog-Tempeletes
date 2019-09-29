<?xml version="1.0"?>
<recipe>
 
	<instantiate from="src/app_package/Activity.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/ui/activites/${activityName}Activity.kt" />

	<instantiate from="src/app_package/Viewmodel.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/viewModels/${viewModelPackage}/${activityName}ViewModel.kt" />

      <instantiate from="src/app_package/api.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/api/${apiName}.kt" /> 

      <instantiate from="src/app_package/dataSource.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/models/${dataModel}DataSource.kt" /> 

       <instantiate from="src/app_package/View.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/callBacks/${activityName}CallBack.kt" />

      <instantiate from="src/app_package/scope.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/scopes/${activityName}ActivityScope.kt" />

      <instantiate from="src/app_package/component.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/di/components/${activityName}ActivityComponent.kt" />
      
    <instantiate from="res/layout/activity.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="res/icreload.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/drawable/ic_loading.xml" />
 
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <merge from="res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
     <merge from="res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
 
	<open file="${srcOut}/ui/activities/${activityName}Activity.java"/>
</recipe>
