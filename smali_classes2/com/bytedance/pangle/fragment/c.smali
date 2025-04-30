.class public final Lcom/bytedance/pangle/fragment/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field a:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/pangle/fragment/c;->a:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle"

    const-string v1, "mActive"

    .line 1
    iget-object v2, p0, Lcom/bytedance/pangle/fragment/c;->a:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eq v2, p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p1, "android:fragments"

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p1, v1}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 4
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, p2, v5

    const-string v7, "mTag"

    .line 5
    invoke-static {v6, v7}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_plugin"

    .line 6
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 8
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    :goto_1
    move-object v2, v6

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    if-eqz v2, :cond_9

    const-string v0, "android.app.FragmentState"

    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, [Ljava/lang/Object;

    .line 11
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [I

    const/4 v5, 0x0

    .line 12
    :goto_3
    array-length v6, p2

    if-ge v4, v6, :cond_8

    .line 13
    aget-object v6, p2, v4

    if-eq v6, v2, :cond_7

    .line 14
    aget-object v6, p2, v4

    aput-object v6, v0, v5

    .line 15
    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 16
    :cond_8
    invoke-static {p1, v1, v0}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "mAdded"

    .line 17
    invoke-static {p1, p2, v3}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_pangle"

    const-string v1, "mActive"

    .line 1
    iget-object v2, p0, Lcom/bytedance/pangle/fragment/c;->a:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eq v2, p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p1, "android:fragments"

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p1, v1}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 4
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, p2, v5

    const-string v7, "mTag"

    .line 5
    invoke-static {v6, v7}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag_plugin"

    .line 6
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 8
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    :goto_1
    move-object v2, v6

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    if-eqz v2, :cond_9

    const-string v0, "android.app.FragmentState"

    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, [Ljava/lang/Object;

    .line 11
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [I

    const/4 v5, 0x0

    .line 12
    :goto_3
    array-length v6, p2

    if-ge v4, v6, :cond_8

    .line 13
    aget-object v6, p2, v4

    if-eq v6, v2, :cond_7

    .line 14
    aget-object v6, p2, v4

    aput-object v6, v0, v5

    .line 15
    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 16
    :cond_8
    invoke-static {p1, v1, v0}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "mAdded"

    .line 17
    invoke-static {p1, p2, v3}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
