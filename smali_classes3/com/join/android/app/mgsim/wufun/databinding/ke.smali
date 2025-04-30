.class public Lcom/join/android/app/mgsim/wufun/databinding/ke;
.super Lcom/join/android/app/mgsim/wufun/databinding/je;
.source "EmusArchiveGameDetailListItemBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final w0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final x0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final q0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r0:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s0:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final t0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final u0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v0:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ke;->x0:Landroid/util/SparseIntArray;

    const v1, 0x7f0910a7

    const/4 v2, 0x7

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090a2e

    const/16 v2, 0x8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090a7b

    const/16 v2, 0x9

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090bdf

    const/16 v2, 0xa

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ke;->w0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/ke;->x0:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ke;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 13

    move-object v12, p0

    const/4 v0, 0x3

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/join/android/app/mgsim/wufun/databinding/je;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/ke;->v0:J

    .line 4
    iget-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/je;->E:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/ke;->q0:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 7
    aget-object v2, p3, v0

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/ke;->r0:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 9
    aget-object v3, p3, v2

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v3, v12, Lcom/join/android/app/mgsim/wufun/databinding/ke;->s0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v3, v12, Lcom/join/android/app/mgsim/wufun/databinding/je;->I:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v3, v12, Lcom/join/android/app/mgsim/wufun/databinding/je;->K:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v3, v12, Lcom/join/android/app/mgsim/wufun/databinding/je;->n0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object v1, p2

    .line 14
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 15
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v12, Lcom/join/android/app/mgsim/wufun/databinding/ke;->t0:Landroid/view/View$OnClickListener;

    .line 16
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v0, p0, v2}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/ke;->u0:Landroid/view/View$OnClickListener;

    .line 17
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/ke;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->o0:Lcom/join/mgps/dto/CloudListDataBean;

    .line 2
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->p0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_5

    .line 3
    invoke-interface {v1, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;->onClickRun(Lcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->o0:Lcom/join/mgps/dto/CloudListDataBean;

    .line 5
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->p0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    :cond_4
    if-eqz p2, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {v1, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;->onClickImage(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public h1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->p0:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ke;->v0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ke;->v0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

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
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ke;->v0:J

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

.method public i1(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 4
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/je;->o0:Lcom/join/mgps/dto/CloudListDataBean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ke;->v0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ke;->v0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x11

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

    const-wide/16 v0, 0x4

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ke;->v0:J

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
    .locals 18

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ke;->v0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/ke;->v0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/je;->o0:Lcom/join/mgps/dto/CloudListDataBean;

    const-wide/16 v6, 0x5

    and-long v8, v2, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmp-long v12, v8, v4

    if-eqz v12, :cond_4

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    move-result-object v12

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getNickname()Ljava/lang/String;

    move-result-object v13

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveDesc()Ljava/lang/String;

    move-result-object v14

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getHighComment()I

    move-result v15

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v11

    move-object v12, v0

    move-object v13, v12

    move-object v14, v13

    const/4 v15, 0x0

    :goto_0
    if-nez v12, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 11
    :goto_1
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    cmp-long v17, v8, v4

    if-eqz v17, :cond_3

    if-eqz v16, :cond_2

    const-wide/16 v8, 0x10

    goto :goto_2

    :cond_2
    const-wide/16 v8, 0x8

    :goto_2
    or-long/2addr v2, v8

    :cond_3
    if-eqz v16, :cond_5

    const/16 v8, 0x8

    goto :goto_3

    :cond_4
    move-object v0, v11

    move-object v12, v0

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :cond_5
    const/4 v8, 0x0

    :goto_3
    and-long/2addr v6, v2

    cmp-long v9, v6, v4

    if-eqz v9, :cond_6

    .line 12
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/je;->E:Landroid/widget/TextView;

    invoke-static {v6, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/ke;->r0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/ke;->r0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v12, v11, v10}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/je;->I:Landroid/widget/TextView;

    invoke-static {v6, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 16
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/je;->K:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v0, v11, v10}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/je;->n0:Landroid/widget/TextView;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_6
    const-wide/16 v6, 0x4

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ke;->r0:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ke;->t0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ke;->s0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ke;->u0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 20
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

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ke;->i1(Lcom/join/mgps/dto/CloudListDataBean;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ke;->h1(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
