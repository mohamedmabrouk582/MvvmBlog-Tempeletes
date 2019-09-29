package ${packageName}.di.components

import ${packageName}.di.scopes.${activityName}ActivityScope
import ${packageName}.ui.activites.${activityName}Activity
import dagger.Component


/*
* Created By mabrouk on 16/03/19
* KotilnApp
*/
@MovieScope
@Component(dependencies = arrayOf(AppComponent::class))
interface ${activityName}ActivityComponent {
    fun inject(activity:${activityName}Activity)
}
