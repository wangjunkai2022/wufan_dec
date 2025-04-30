.class public Lcom/join/android/app/mgsim/wufun/databinding/xc0;
.super Lcom/join/android/app/mgsim/wufun/databinding/wc0;
.source "UnbindThridpartActivityBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final v0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final w0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final J:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final K:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o0:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final q0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final r0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final s0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t0:Landroidx/databinding/InverseBindingListener;

.field private u0:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->v0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->w0:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/xc0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x1

    .line 2
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    const/4 v1, 0x7

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v2, p3, v1

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const/4 v5, 0x6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/join/android/app/mgsim/wufun/databinding/wc0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 3
    new-instance p1, Lcom/join/android/app/mgsim/wufun/databinding/xc0$a;

    invoke-direct {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/xc0$a;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/xc0;)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->t0:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v2, -0x1

    .line 4
    iput-wide v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->E:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->J:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 8
    aget-object v3, p3, p1

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->K:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 10
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->n0:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x5

    .line 12
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->o0:Landroid/widget/EditText;

    .line 13
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x6

    .line 14
    aget-object p3, p3, v3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->p0:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->F:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->G:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 19
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->q0:Landroid/view/View$OnClickListener;

    .line 20
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, p1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->r0:Landroid/view/View$OnClickListener;

    .line 21
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->s0:Landroid/view/View$OnClickListener;

    .line 22
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->invalidateAll()V

    return-void
.end method

.method static synthetic j1(Lcom/join/android/app/mgsim/wufun/databinding/xc0;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->o0:Landroid/widget/EditText;

    return-object p0
.end method

.method private k1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private l1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private m1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private n1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private o1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private p1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->m1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->k1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 3
    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->p1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 4
    :cond_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->l1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 5
    :cond_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->n1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 6
    :cond_5
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->o1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->I:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendUnbindThridPart(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->I:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendsmsCode(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->H:Lcom/join/kotlin/ui/notice/ClickProxy;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    .line 8
    invoke-interface {p1}, Lcom/join/kotlin/ui/notice/ClickProxy;->onClickBack()V

    :cond_6
    :goto_0
    return-void
.end method

.method public h1(Lcom/join/kotlin/ui/notice/ClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/notice/ClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->H:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i1(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->I:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1b

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected k()V
    .locals 30

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->u0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->I:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    const-wide/16 v6, 0x17f

    and-long/2addr v6, v2

    const-wide/16 v8, 0x148

    const-wide/16 v10, 0x144

    const-wide/16 v14, 0x142

    const-wide/16 v16, 0x150

    const-wide/16 v18, 0x141

    const/4 v12, 0x0

    const/4 v13, 0x0

    cmp-long v22, v6, v4

    if-eqz v22, :cond_10

    and-long v6, v2, v18

    cmp-long v22, v6, v4

    if-eqz v22, :cond_1

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getSendCodeButnText()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v13

    .line 7
    :goto_0
    invoke-virtual {v1, v12, v6}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v13

    :goto_1
    and-long v22, v2, v14

    const/4 v7, 0x1

    cmp-long v24, v22, v4

    if-eqz v24, :cond_4

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getSendCodeButnColor()Landroidx/lifecycle/MutableLiveData;

    move-result-object v22

    move-object/from16 v12, v22

    goto :goto_2

    :cond_2
    move-object v12, v13

    .line 10
    :goto_2
    invoke-virtual {v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_3

    .line 11
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v12, v13

    .line 12
    :goto_3
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->s0(Ljava/lang/Integer;)I

    move-result v12

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    and-long v23, v2, v10

    cmp-long v25, v23, v4

    if-eqz v25, :cond_8

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getCodeText()Landroidx/lifecycle/MutableLiveData;

    move-result-object v23

    move-object/from16 v7, v23

    goto :goto_5

    :cond_5
    move-object v7, v13

    :goto_5
    const/4 v14, 0x2

    .line 14
    invoke-virtual {v1, v14, v7}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_6

    .line 15
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v7, v13

    :goto_6
    if-eqz v7, :cond_7

    .line 16
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_7

    :cond_7
    const/4 v14, 0x0

    :goto_7
    const/4 v15, 0x6

    if-ne v14, v15, :cond_9

    const/16 v22, 0x1

    goto :goto_8

    :cond_8
    move-object v7, v13

    :cond_9
    const/16 v22, 0x0

    :goto_8
    and-long v14, v2, v8

    cmp-long v23, v14, v4

    if-eqz v23, :cond_b

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getTitle()Landroidx/lifecycle/MutableLiveData;

    move-result-object v14

    goto :goto_9

    :cond_a
    move-object v14, v13

    :goto_9
    const/4 v15, 0x3

    .line 18
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_b

    .line 19
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_a

    :cond_b
    move-object v14, v13

    :goto_a
    and-long v26, v2, v16

    cmp-long v15, v26, v4

    if-eqz v15, :cond_d

    if-eqz v0, :cond_c

    .line 20
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v15

    goto :goto_b

    :cond_c
    move-object v15, v13

    :goto_b
    const/4 v8, 0x4

    .line 21
    invoke-virtual {v1, v8, v15}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_d

    .line 22
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_c

    :cond_d
    move-object v8, v13

    :goto_c
    const-wide/16 v20, 0x160

    and-long v28, v2, v20

    cmp-long v9, v28, v4

    if-eqz v9, :cond_f

    if-eqz v0, :cond_e

    .line 23
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getMoble()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_d

    :cond_e
    move-object v0, v13

    :goto_d
    const/4 v9, 0x5

    .line 24
    invoke-virtual {v1, v9, v0}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_f

    .line 25
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v9, v12

    goto :goto_e

    :cond_f
    move v9, v12

    move-object v0, v13

    :goto_e
    move/from16 v12, v22

    goto :goto_f

    :cond_10
    move-object v0, v13

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    move-object v14, v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_f
    const-wide/16 v22, 0x100

    and-long v22, v2, v22

    cmp-long v15, v22, v4

    if-eqz v15, :cond_11

    .line 26
    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->E:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->o0:Landroid/widget/EditText;

    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->t0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v10, v13, v13, v13, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 28
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->p0:Landroid/widget/TextView;

    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->s0:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->F:Landroid/widget/TextView;

    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->r0:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    and-long v10, v2, v16

    cmp-long v13, v10, v4

    if-eqz v13, :cond_12

    .line 30
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->K:Landroid/widget/TextView;

    invoke-static {v10, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_12
    const-wide/16 v10, 0x160

    and-long/2addr v10, v2

    cmp-long v8, v10, v4

    if-eqz v8, :cond_13

    .line 31
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->n0:Landroid/widget/TextView;

    invoke-static {v8, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_13
    const-wide/16 v10, 0x144

    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_14

    .line 32
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->o0:Landroid/widget/EditText;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_14
    and-long v7, v2, v18

    cmp-long v0, v7, v4

    if-eqz v0, :cond_15

    .line 34
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->p0:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_15
    const-wide/16 v6, 0x142

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_16

    .line 35
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->p0:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    const-wide/16 v6, 0x148

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17

    .line 36
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->F:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/wc0;->G:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_17
    return-void

    :catchall_0
    move-exception v0

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x1b

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->i1(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/notice/ClickProxy;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/xc0;->h1(Lcom/join/kotlin/ui/notice/ClickProxy;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
