package com.entria.views;

import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;

public class ViewWithoutOverflowManager extends ViewGroupManager<ViewWithoutOverflowLayout> {

    public static final String REACT_CLASS = "RNViewOverflow";

    @Override
     protected ViewWithoutOverflowLayout createViewInstance(ThemedReactContext reactContext) {
        return new ViewWithoutOverflowLayout(reactContext);
     }

    @Override
    public String getName() {
        return REACT_CLASS;
    }

}
