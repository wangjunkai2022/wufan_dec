.class public Lcom/join/mgps/Util/c;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/c;->b(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static c(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/c;->d(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-object p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static e(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010062

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static f(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010063

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static g(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x40a00000    # 5.0f

    .line 1
    invoke-static {p0, v0}, Lcom/join/mgps/Util/c;->m(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x2bc

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static h(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/c;->j(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x2bc

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static i(Landroid/view/View;IIIZ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "scrollX"

    .line 1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p3

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    if-eqz p4, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-object p0
.end method

.method public static j(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ef8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v2, 0x8

    new-array v2, v2, [Landroid/animation/Keyframe;

    const/4 v3, 0x0

    .line 3
    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    neg-int v4, v0

    int-to-float v4, v4

    const v6, 0x3dcccccd    # 0.1f

    .line 4
    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    int-to-float v0, v0

    const v6, 0x3e851eb8    # 0.26f

    .line 5
    invoke-static {v6, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v2, v8

    const v6, 0x3ed70a3d    # 0.42f

    .line 6
    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v2, v8

    const v6, 0x3f147ae1    # 0.58f

    .line 7
    invoke-static {v6, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const/4 v8, 0x4

    aput-object v6, v2, v8

    const v6, 0x3f3d70a4    # 0.74f

    .line 8
    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v2, v6

    const v4, 0x3f666666    # 0.9f

    .line 9
    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v2, v4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    invoke-static {v0, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    .line 11
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v5

    .line 12
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/view/View;III)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "backgroundColor"

    .line 1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 4
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static l(Landroid/view/View;IIZZ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "translationY"

    .line 1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 2
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    int-to-long p1, p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-object p0
.end method

.method public static m(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 27

    .line 1
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v1, 0xb

    new-array v2, v1, [Landroid/animation/Keyframe;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const v5, 0x3dcccccd    # 0.1f

    const v7, 0x3f4ccccd    # 0.8f

    .line 3
    invoke-static {v5, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v2, v9

    const v8, 0x3e4ccccd    # 0.2f

    .line 4
    invoke-static {v8, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v2, v11

    const v10, 0x3e99999a    # 0.3f

    const v12, 0x3f8ccccd    # 1.1f

    .line 5
    invoke-static {v10, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v2, v14

    const v13, 0x3ecccccd    # 0.4f

    const v15, 0x3f99999a    # 1.2f

    .line 6
    invoke-static {v13, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v2, v17

    const/high16 v13, 0x3f000000    # 0.5f

    .line 7
    invoke-static {v13, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v18

    const/16 v19, 0x5

    aput-object v18, v2, v19

    const v13, 0x3f19999a    # 0.6f

    .line 8
    invoke-static {v13, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v20

    const/16 v21, 0x6

    aput-object v20, v2, v21

    const v13, 0x3f333333    # 0.7f

    .line 9
    invoke-static {v13, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v22

    const/16 v23, 0x7

    aput-object v22, v2, v23

    .line 10
    invoke-static {v7, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v22

    const/16 v24, 0x8

    aput-object v22, v2, v24

    const v13, 0x3f666666    # 0.9f

    .line 11
    invoke-static {v13, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    const/16 v25, 0x9

    aput-object v13, v2, v25

    .line 12
    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    const/16 v25, 0xa

    aput-object v13, v2, v25

    .line 13
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 14
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v1, [Landroid/animation/Keyframe;

    .line 15
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v25

    aput-object v25, v13, v6

    .line 16
    invoke-static {v5, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v25

    aput-object v25, v13, v9

    .line 17
    invoke-static {v8, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v25

    aput-object v25, v13, v11

    .line 18
    invoke-static {v10, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v25

    aput-object v25, v13, v14

    const v14, 0x3ecccccd    # 0.4f

    .line 19
    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v26

    aput-object v26, v13, v17

    const/high16 v14, 0x3f000000    # 0.5f

    .line 20
    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v26

    aput-object v26, v13, v19

    const v14, 0x3f19999a    # 0.6f

    .line 21
    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v26

    aput-object v26, v13, v21

    const v14, 0x3f333333    # 0.7f

    .line 22
    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v26

    aput-object v26, v13, v23

    .line 23
    invoke-static {v7, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    aput-object v14, v13, v24

    const v14, 0x3f666666    # 0.9f

    .line 24
    invoke-static {v14, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    const/16 v14, 0x9

    aput-object v12, v13, v14

    .line 25
    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    const/16 v14, 0xa

    aput-object v12, v13, v14

    .line 26
    invoke-static {v2, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 27
    sget-object v12, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v1, v1, [Landroid/animation/Keyframe;

    .line 28
    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    aput-object v13, v1, v6

    const/high16 v13, -0x3fc00000    # -3.0f

    mul-float v13, v13, p1

    .line 29
    invoke-static {v5, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v1, v9

    .line 30
    invoke-static {v8, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v1, v11

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, p1

    .line 31
    invoke-static {v10, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v1, v10

    const v8, 0x3ecccccd    # 0.4f

    .line 32
    invoke-static {v8, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    aput-object v8, v1, v17

    const/high16 v8, 0x3f000000    # 0.5f

    .line 33
    invoke-static {v8, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    aput-object v8, v1, v19

    const v8, 0x3f19999a    # 0.6f

    .line 34
    invoke-static {v8, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    aput-object v8, v1, v21

    const v8, 0x3f333333    # 0.7f

    .line 35
    invoke-static {v8, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    aput-object v8, v1, v23

    .line 36
    invoke-static {v7, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    aput-object v7, v1, v24

    const v7, 0x3f666666    # 0.9f

    .line 37
    invoke-static {v7, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/16 v7, 0x9

    aput-object v5, v1, v7

    .line 38
    invoke-static {v4, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 39
    invoke-static {v12, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v6

    aput-object v2, v3, v9

    aput-object v1, v3, v11

    move-object/from16 v0, p0

    .line 40
    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2bc

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method
