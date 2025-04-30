.class public Lcom/join/android/app/mgsim/wufun/databinding/o30;
.super Lcom/join/android/app/mgsim/wufun/databinding/n30;
.source "ModUploadArchiveActivityBindingImpl.java"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final D0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final E0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final A0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final B0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C0:J

.field private final r0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final t0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final u0:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final v0:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final w0:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final x0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final y0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final z0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->D0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->E0:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/o30;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15

    move-object v11, p0

    const/4 v12, 0x4

    .line 2
    aget-object v0, p3, v12

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v13, 0x1

    aget-object v0, p3, v13

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v14, 0x3

    aget-object v0, p3, v14

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x4

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/join/android/app/mgsim/wufun/databinding/n30;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    .line 4
    iget-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/n30;->E:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/n30;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/n30;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/n30;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->r0:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 10
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->s0:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x5

    .line 12
    aget-object v3, p3, v2

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->t0:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x6

    .line 14
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->u0:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x7

    .line 16
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->v0:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0x9

    .line 18
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->w0:Landroid/widget/RelativeLayout;

    .line 19
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/n30;->J:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/n30;->K:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 23
    invoke-virtual {p0, v1}, Landroidx/databinding/ViewDataBinding;->A0(Landroid/view/View;)V

    .line 24
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, p0, v2}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->x0:Landroid/view/View$OnClickListener;

    .line 25
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, p0, v12}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->y0:Landroid/view/View$OnClickListener;

    .line 26
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->z0:Landroid/view/View$OnClickListener;

    .line 27
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v0, p0, v14}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->A0:Landroid/view/View$OnClickListener;

    .line 28
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v0, p0, v13}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/o30;->B0:Landroid/view/View$OnClickListener;

    .line 29
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/o30;->invalidateAll()V

    return-void
.end method

.method private n1(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

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
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

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

.method private q1(Landroidx/lifecycle/MutableLiveData;I)Z
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

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

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/o30;->n1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/o30;->q1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 3
    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/o30;->o1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 4
    :cond_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/o30;->p1(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->o0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_a

    .line 2
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->o0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_a

    .line 4
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->o0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_a

    .line 6
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->o0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_a

    .line 8
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->o0:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    if-eqz v0, :cond_a

    .line 10
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

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

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

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

.method public j1(Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;)V
    .locals 4
    .param p1    # Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->p0:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

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
    .locals 27

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->q0:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    .line 6
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->p0:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    .line 7
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->n0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    const-wide/16 v8, 0x18f

    and-long/2addr v8, v2

    const-wide/16 v14, 0x182

    const-wide/16 v16, 0x181

    const/4 v10, 0x0

    cmp-long v20, v8, v4

    if-eqz v20, :cond_18

    and-long v8, v2, v16

    const/16 v20, 0x8

    const/4 v11, 0x1

    cmp-long v21, v8, v4

    if-eqz v21, :cond_a

    if-eqz v7, :cond_0

    .line 8
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    move-result-object v21

    move-object/from16 v12, v21

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1, v10, v12}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_1

    .line 10
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-eqz v12, :cond_3

    const/16 v23, 0x1

    goto :goto_3

    :cond_3
    const/16 v23, 0x0

    :goto_3
    cmp-long v24, v8, v4

    if-eqz v24, :cond_5

    if-eqz v13, :cond_4

    const-wide/16 v8, 0x1000

    goto :goto_4

    :cond_4
    const-wide/16 v8, 0x800

    :goto_4
    or-long/2addr v2, v8

    :cond_5
    and-long v8, v2, v16

    cmp-long v24, v8, v4

    if-eqz v24, :cond_7

    if-eqz v23, :cond_6

    const-wide/16 v8, 0x400

    goto :goto_5

    :cond_6
    const-wide/16 v8, 0x200

    :goto_5
    or-long/2addr v2, v8

    :cond_7
    if-eqz v13, :cond_8

    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    const/16 v8, 0x8

    :goto_6
    if-eqz v23, :cond_9

    const/4 v9, 0x0

    goto :goto_7

    :cond_9
    const/16 v9, 0x8

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_7
    and-long v23, v2, v14

    cmp-long v13, v23, v4

    if-eqz v13, :cond_11

    if-eqz v7, :cond_b

    .line 11
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchiveDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v13

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    .line 12
    :goto_8
    invoke-virtual {v1, v11, v13}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_c

    .line 13
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    :goto_9
    if-eqz v13, :cond_d

    .line 14
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_a

    :cond_d
    const/4 v13, 0x0

    :goto_a
    if-le v13, v11, :cond_e

    goto :goto_b

    :cond_e
    const/4 v11, 0x0

    :goto_b
    cmp-long v13, v23, v4

    if-eqz v13, :cond_10

    if-eqz v11, :cond_f

    const-wide/16 v23, 0x4000

    goto :goto_c

    :cond_f
    const-wide/16 v23, 0x2000

    :goto_c
    or-long v2, v2, v23

    :cond_10
    if-eqz v11, :cond_12

    :cond_11
    const/16 v20, 0x0

    :cond_12
    const-wide/16 v21, 0x184

    and-long v23, v2, v21

    cmp-long v11, v23, v4

    if-eqz v11, :cond_14

    if-eqz v7, :cond_13

    .line 15
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getTitle()Landroidx/lifecycle/MutableLiveData;

    move-result-object v11

    goto :goto_d

    :cond_13
    const/4 v11, 0x0

    :goto_d
    const/4 v13, 0x2

    .line 16
    invoke-virtual {v1, v13, v11}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_14

    .line 17
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_e

    :cond_14
    const/4 v11, 0x0

    :goto_e
    const-wide/16 v18, 0x188

    and-long v23, v2, v18

    cmp-long v13, v23, v4

    if-eqz v13, :cond_17

    if-eqz v7, :cond_15

    .line 18
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    goto :goto_f

    :cond_15
    const/4 v7, 0x0

    :goto_f
    const/4 v13, 0x3

    .line 19
    invoke-virtual {v1, v13, v7}, Landroidx/databinding/ViewDataBinding;->U0(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_16

    .line 20
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    goto :goto_10

    :cond_16
    const/4 v7, 0x0

    :goto_10
    if-eqz v7, :cond_17

    .line 21
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v13

    .line 22
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPlayTime()Ljava/lang/String;

    move-result-object v7

    move-object v14, v12

    move/from16 v12, v20

    goto :goto_11

    :cond_17
    move-object v14, v12

    move/from16 v12, v20

    const/4 v7, 0x0

    const/4 v13, 0x0

    goto :goto_11

    :cond_18
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_11
    const-wide/16 v25, 0x100

    and-long v25, v2, v25

    cmp-long v15, v25, v4

    if-eqz v15, :cond_19

    .line 23
    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->E:Landroid/widget/LinearLayout;

    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->A0:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->F:Landroid/widget/ImageView;

    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->B0:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->G:Landroid/widget/ImageView;

    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->x0:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->H:Landroid/widget/ImageView;

    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->y0:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->J:Landroid/widget/TextView;

    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->z0:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    and-long v16, v2, v16

    cmp-long v10, v16, v4

    if-eqz v10, :cond_1a

    .line 28
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->G:Landroid/widget/ImageView;

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->w0:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->K:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v14, v10, v9}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1a
    const-wide/16 v8, 0x184

    and-long/2addr v8, v2

    cmp-long v10, v8, v4

    if-eqz v10, :cond_1b

    .line 31
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->s0:Landroid/widget/TextView;

    invoke-static {v8, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1b
    const-wide/16 v8, 0x188

    and-long/2addr v8, v2

    cmp-long v10, v8, v4

    if-eqz v10, :cond_1c

    .line 32
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->t0:Landroid/widget/TextView;

    invoke-static {v8, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 33
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->u0:Landroid/widget/TextView;

    invoke-static {v8, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1c
    const-wide/16 v7, 0x182

    and-long/2addr v7, v2

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1d

    .line 34
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/o30;->v0:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1d
    const-wide/16 v7, 0x130

    and-long/2addr v2, v7

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1e

    .line 35
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v3, 0x0

    invoke-static {v2, v0, v6, v3, v3}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    :cond_1e
    return-void

    :catchall_0
    move-exception v0

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k1(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;)V
    .locals 4
    .param p1    # Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->q0:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

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

.method public l1(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->o0:Landroid/view/View$OnClickListener;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x15

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

.method public m1(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->n0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/o30;->C0:J

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/o30;->k1(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/o30;->j1(Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    if-ne v0, p1, :cond_2

    .line 3
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/o30;->l1(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1b

    if-ne v0, p1, :cond_3

    .line 4
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/o30;->m1(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
