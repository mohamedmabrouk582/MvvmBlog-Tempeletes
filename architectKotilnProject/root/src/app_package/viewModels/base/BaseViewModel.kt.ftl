package ${packageName}.viewModels.base

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import ${packageName}.callBacks.BaseCallBack


/*
* Created By mabrouk on 16/03/19
* KotilnApp
*/

open class BaseViewModel<v :BaseCallBack> : AndroidViewModel, BaseVmodel<v> {
    constructor(application: Application):super(application)
    lateinit var view:v
    override fun attachView(view: v) {
        this.view=view
    }
}
