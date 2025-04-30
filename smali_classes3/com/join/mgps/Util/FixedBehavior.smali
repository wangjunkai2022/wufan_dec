.class public Lcom/join/mgps/Util/FixedBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "FixedBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/FixedBehavior$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "AppbarLayoutBehavior"

.field private static final d:I = 0x1


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const-string v0, "flingRunnable"

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-gt v3, v4, :cond_2

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const-string v4, "mFlingRunnable"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2

    .line 5
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_3
    return-object v2

    :catch_0
    nop

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v2
.end method

.method private b()Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const-string v0, "scroller"

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-gt v3, v4, :cond_2

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const-string v4, "mScroller"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2

    .line 5
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_3
    return-object v2

    :catch_0
    nop

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v2
.end method

.method private e(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/Util/FixedBehavior;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/Util/FixedBehavior;->b()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 6
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/OverScroller;

    if-eqz v3, :cond_3

    const-string v4, "AppbarLayoutBehavior"

    const-string v5, "\u5b58\u5728flingRunnable"

    .line 7
    invoke-static {v4, v5}, Lcom/join/mgps/Util/FixedBehavior$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterceptTouchEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppbarLayoutBehavior"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/FixedBehavior$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/Util/FixedBehavior;->a:Z

    iput-boolean v0, p0, Lcom/join/mgps/Util/FixedBehavior;->b:Z

    .line 3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/Util/FixedBehavior;->e(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 5
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNestedScroll: target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,dxConsumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,dyConsumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppbarLayoutBehavior"

    .line 3
    invoke-static {v1, v0}, Lcom/join/mgps/Util/FixedBehavior$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/Util/FixedBehavior;->b:Z

    if-nez v0, :cond_0

    .line 5
    invoke-super/range {p0 .. p8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/Util/FixedBehavior;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/join/mgps/Util/FixedBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNestedPreScroll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,dx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,dy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppbarLayoutBehavior"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/FixedBehavior$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/Util/FixedBehavior;->a:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/Util/FixedBehavior;->b:Z

    if-nez v0, :cond_1

    .line 5
    invoke-super/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p8}, Lcom/join/mgps/Util/FixedBehavior;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/join/mgps/Util/FixedBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 2

    const-string v0, "AppbarLayoutBehavior"

    const-string v1, "onStartNestedScroll"

    .line 2
    invoke-static {v0, v1}, Lcom/join/mgps/Util/FixedBehavior$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/Util/FixedBehavior;->e(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 4
    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/Util/FixedBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 2

    const-string v0, "AppbarLayoutBehavior"

    const-string v1, "onStopNestedScroll"

    .line 2
    invoke-static {v0, v1}, Lcom/join/mgps/Util/FixedBehavior$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/Util/FixedBehavior;->a:Z

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/Util/FixedBehavior;->b:Z

    return-void
.end method
