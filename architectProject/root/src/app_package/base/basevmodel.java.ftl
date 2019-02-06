package ${packageName}.viewModels.base;

import ${packageName}.views.BaseView;

public interface BaseVmodel<v extends BaseView> {
    void attachView(v view);
}
