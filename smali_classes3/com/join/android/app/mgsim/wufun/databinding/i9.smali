.class public Lcom/join/android/app/mgsim/wufun/databinding/i9;
.super Lcom/join/android/app/mgsim/wufun/databinding/h9;
.source "DatabindingTitleLayoutBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final p0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final q0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final K:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o0:J


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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->p0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/i9;->q0:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/i9;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x3

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/join/android/app/mgsim/wufun/databinding/h9;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h9;->E:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h9;->F:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h9;->G:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 10
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->n0:Landroid/view/View$OnClickListener;

    .line 11
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/i9;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected W(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h9;->I:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

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

.method public i1(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h9;->I:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

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

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

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

.method public j1(Lcom/join/kotlin/ui/modleregin/modle/TitleModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/TitleModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h9;->J:Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x9

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

.method protected k()V
    .locals 23

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h9;->H:Ljava/lang/Boolean;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/h9;->J:Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    const-wide/16 v7, 0x9

    and-long v9, v2, v7

    const/4 v11, 0x0

    cmp-long v12, v9, v4

    if-eqz v12, :cond_3

    .line 7
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->w0(Ljava/lang/Boolean;)Z

    move-result v0

    cmp-long v12, v9, v4

    if-eqz v12, :cond_1

    if-eqz v0, :cond_0

    const-wide/16 v9, 0x80

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x40

    :goto_0
    or-long/2addr v2, v9

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i9;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v9, 0x7f080d32

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i9;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v9, 0x7f080079

    :goto_1
    invoke-static {v0, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v11

    :goto_2
    const-wide/16 v9, 0xa

    and-long v12, v2, v9

    const/16 v14, 0x8

    const-wide/16 v15, 0x100

    const/16 v17, 0x1

    const/16 v18, 0x0

    cmp-long v19, v12, v4

    if-eqz v19, :cond_c

    if-eqz v6, :cond_4

    .line 9
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->getSubTitle()Ljava/lang/String;

    move-result-object v19

    .line 11
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v6

    move-object/from16 v22, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    goto :goto_3

    :cond_4
    move-object v6, v11

    move-object/from16 v19, v6

    :goto_3
    if-nez v11, :cond_5

    const/16 v20, 0x1

    goto :goto_4

    :cond_5
    const/16 v20, 0x0

    :goto_4
    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    cmp-long v21, v12, v4

    if-eqz v21, :cond_8

    if-eqz v20, :cond_7

    const-wide/16 v12, 0x200

    or-long/2addr v2, v12

    goto :goto_6

    :cond_7
    or-long/2addr v2, v15

    :cond_8
    :goto_6
    and-long v12, v2, v9

    cmp-long v21, v12, v4

    if-eqz v21, :cond_a

    if-eqz v6, :cond_9

    const-wide/16 v12, 0x20

    goto :goto_7

    :cond_9
    const-wide/16 v12, 0x10

    :goto_7
    or-long/2addr v2, v12

    :cond_a
    if-eqz v6, :cond_b

    const/16 v6, 0x8

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :goto_8
    move-object/from16 v12, v19

    goto :goto_9

    :cond_c
    move-object v12, v11

    const/4 v6, 0x0

    const/16 v20, 0x0

    :goto_9
    and-long/2addr v15, v2

    cmp-long v13, v15, v4

    if-eqz v13, :cond_d

    const-string v13, ""

    if-ne v11, v13, :cond_d

    const/4 v13, 0x1

    goto :goto_a

    :cond_d
    const/4 v13, 0x0

    :goto_a
    and-long v15, v2, v9

    cmp-long v19, v15, v4

    if-eqz v19, :cond_11

    if-eqz v20, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v17, v13

    :goto_b
    cmp-long v13, v15, v4

    if-eqz v13, :cond_10

    if-eqz v17, :cond_f

    const-wide/16 v15, 0x800

    goto :goto_c

    :cond_f
    const-wide/16 v15, 0x400

    :goto_c
    or-long/2addr v2, v15

    :cond_10
    if-eqz v17, :cond_11

    goto :goto_d

    :cond_11
    const/4 v14, 0x0

    :goto_d
    and-long/2addr v7, v2

    cmp-long v13, v7, v4

    if-eqz v13, :cond_12

    .line 12
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/i9;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v7, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_12
    const-wide/16 v7, 0x8

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_13

    .line 13
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h9;->E:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/i9;->n0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    and-long/2addr v2, v9

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    .line 14
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h9;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h9;->F:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h9;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/h9;->G:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k1(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/h9;->H:Ljava/lang/Boolean;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/i9;->o0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/i9;->k1(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/i9;->j1(Lcom/join/kotlin/ui/modleregin/modle/TitleModle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/i9;->i1(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
