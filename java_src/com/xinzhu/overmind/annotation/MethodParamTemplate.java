package com.xinzhu.overmind.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes.dex */
public @interface MethodParamTemplate {
    Class<?>[] throwz() default {};

    Class<?>[] value() default {};
}
