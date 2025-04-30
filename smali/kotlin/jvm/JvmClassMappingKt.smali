.class public final Lkotlin/jvm/JvmClassMappingKt;
.super Ljava/lang/Object;
.source "JvmClassMapping.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u001b\n\u0002\u0008\u0006\u001a!\u0010\u0004\u001a\u00020\u0003\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u0006\u0012\u0002\u0008\u00030\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\"/\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00068F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\"=\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\u0007\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00068\u00c7\u0002@\u0007X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000b\u0010\t\"(\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00028\u00008\u00c6\u0002@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\"-\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00068F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\t\"-\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00078G@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\")\u0010\u0019\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0006\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0016*\u00028\u00008F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\"/\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00068G@\u0006\u00a2\u0006\u000c\u0012\u0004\u0008\u001a\u0010\r\u001a\u0004\u0008\u000f\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "",
        "T",
        "",
        "",
        "isArrayOf",
        "([Ljava/lang/Object;)Z",
        "Lkotlin/reflect/KClass;",
        "Ljava/lang/Class;",
        "getJavaPrimitiveType",
        "(Lkotlin/reflect/KClass;)Ljava/lang/Class;",
        "javaPrimitiveType",
        "getRuntimeClassOfKClassInstance",
        "getRuntimeClassOfKClassInstance$annotations",
        "(Lkotlin/reflect/KClass;)V",
        "javaClass",
        "getJavaClass",
        "(Ljava/lang/Object;)Ljava/lang/Class;",
        "getJavaObjectType",
        "javaObjectType",
        "getKotlinClass",
        "(Ljava/lang/Class;)Lkotlin/reflect/KClass;",
        "kotlin",
        "",
        "getAnnotationClass",
        "(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;",
        "annotationClass",
        "getJavaClass$annotations",
        "java",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "JvmClassMappingKt"
.end annotation


# direct methods
.method public static final getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;
    .locals 1
    .param p0    # Ljava/lang/annotation/Annotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(TT;)",
            "Lkotlin/reflect/KClass<",
            "+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$annotationClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "(this as java.lang.annot\u2026otation).annotationType()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.KClass<out T>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final getJavaClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$javaClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getJavaClass"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$java"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic getJavaClass$annotations(Lkotlin/reflect/KClass;)V
    .locals 0

    return-void
.end method

.method public static final getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 2
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$javaObjectType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "short"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Short;

    goto :goto_0

    :sswitch_1
    const-string v1, "float"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    const-string v1, "void"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Void;

    goto :goto_0

    :sswitch_4
    const-string v1, "long"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    const-string v1, "char"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Character;

    goto :goto_0

    :sswitch_6
    const-string v1, "byte"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    :sswitch_7
    const-string v1, "int"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    const-string v1, "double"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p0, Ljava/lang/Double;

    :cond_1
    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getJavaPrimitiveType(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$javaPrimitiveType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "java.lang.Double"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_1
    const-string v0, "java.lang.Void"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_2
    const-string v0, "java.lang.Long"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_3
    const-string v0, "java.lang.Byte"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_4
    const-string v0, "java.lang.Boolean"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_5
    const-string v0, "java.lang.Character"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_6
    const-string v0, "java.lang.Short"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_7
    const-string v0, "java.lang.Float"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :sswitch_8
    const-string v0, "java.lang.Integer"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_8
        -0x1f76ce78 -> :sswitch_7
        -0x1ec16c58 -> :sswitch_6
        0x9415455 -> :sswitch_5
        0x148d6054 -> :sswitch_4
        0x17c0bc5c -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x17c9ace8 -> :sswitch_1
        0x2d605225 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getKotlinClass"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$kotlin"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static final getRuntimeClassOfKClassInstance(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "Lkotlin/reflect/KClass<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getRuntimeClassOfKClassInstance"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$javaClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRuntimeClassOfKClassInstance$annotations(Lkotlin/reflect/KClass;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use \'java\' property to get Java class corresponding to this Kotlin class or cast this instance to Any if you really want to get the runtime Java class of this implementation of KClass."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "(this as Any).javaClass"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final synthetic isArrayOf([Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string v0, "$this$isArrayOf"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method
