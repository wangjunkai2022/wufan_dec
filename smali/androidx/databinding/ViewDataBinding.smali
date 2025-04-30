.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/BaseObservable;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBinding$OnStartListener;,
        Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;,
        Landroidx/databinding/ViewDataBinding$IncludedLayouts;,
        Landroidx/databinding/ViewDataBinding$LiveDataListener;,
        Landroidx/databinding/ViewDataBinding$WeakMapListener;,
        Landroidx/databinding/ViewDataBinding$WeakListListener;,
        Landroidx/databinding/ViewDataBinding$WeakPropertyListener;
    }
.end annotation


# static fields
.field private static final A:Landroidx/databinding/CreateWeakListener;

.field private static final B:Landroidx/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "Landroidx/databinding/OnRebindCallback;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final BINDING_TAG_PREFIX:Ljava/lang/String; = "binding_"

.field private static final C:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field

.field private static final D:Landroid/view/View$OnAttachStateChangeListener;

.field static r:I = 0x0

.field private static final s:I = 0x1

.field private static final t:I = 0x2

.field private static final u:I = 0x3

.field private static final v:I = 0x8

.field private static final w:Z

.field private static final x:Landroidx/databinding/CreateWeakListener;

.field private static final y:Landroidx/databinding/CreateWeakListener;

.field private static final z:Landroidx/databinding/CreateWeakListener;


# instance fields
.field private final b:Ljava/lang/Runnable;

.field private c:Z

.field private d:Z

.field private e:[Landroidx/databinding/WeakListener;

.field private final f:Landroid/view/View;

.field private g:Landroidx/databinding/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry<",
            "Landroidx/databinding/OnRebindCallback;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Landroid/view/Choreographer;

.field private final j:Landroid/view/Choreographer$FrameCallback;

.field private k:Landroid/os/Handler;

.field protected final l:Landroidx/databinding/DataBindingComponent;

.field private m:Landroidx/databinding/ViewDataBinding;

.field private n:Landroidx/lifecycle/LifecycleOwner;

.field private o:Landroidx/databinding/ViewDataBinding$OnStartListener;

.field private p:Z

.field protected q:Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/ViewDataBinding;->r:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    sput-boolean v1, Landroidx/databinding/ViewDataBinding;->w:Z

    .line 3
    new-instance v1, Landroidx/databinding/ViewDataBinding$1;

    invoke-direct {v1}, Landroidx/databinding/ViewDataBinding$1;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->x:Landroidx/databinding/CreateWeakListener;

    .line 4
    new-instance v1, Landroidx/databinding/ViewDataBinding$2;

    invoke-direct {v1}, Landroidx/databinding/ViewDataBinding$2;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->y:Landroidx/databinding/CreateWeakListener;

    .line 5
    new-instance v1, Landroidx/databinding/ViewDataBinding$3;

    invoke-direct {v1}, Landroidx/databinding/ViewDataBinding$3;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->z:Landroidx/databinding/CreateWeakListener;

    .line 6
    new-instance v1, Landroidx/databinding/ViewDataBinding$4;

    invoke-direct {v1}, Landroidx/databinding/ViewDataBinding$4;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->A:Landroidx/databinding/CreateWeakListener;

    .line 7
    new-instance v1, Landroidx/databinding/ViewDataBinding$5;

    invoke-direct {v1}, Landroidx/databinding/ViewDataBinding$5;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    .line 8
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v1, Landroidx/databinding/ViewDataBinding;->C:Ljava/lang/ref/ReferenceQueue;

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 9
    sput-object v0, Landroidx/databinding/ViewDataBinding;->D:Landroid/view/View$OnAttachStateChangeListener;

    goto :goto_1

    .line 10
    :cond_1
    new-instance v0, Landroidx/databinding/ViewDataBinding$6;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$6;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->D:Landroid/view/View$OnAttachStateChangeListener;

    :goto_1
    return-void
.end method

.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBinding$7;

    invoke-direct {v0, p0}, Landroidx/databinding/ViewDataBinding$7;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->b:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->c:Z

    .line 4
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    .line 5
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->l:Landroidx/databinding/DataBindingComponent;

    .line 6
    new-array p1, p3, [Landroidx/databinding/WeakListener;

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    .line 7
    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->f:Landroid/view/View;

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->w:Z

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/Choreographer;

    .line 11
    new-instance p1, Landroidx/databinding/ViewDataBinding$8;

    invoke-direct {p1, p0}, Landroidx/databinding/ViewDataBinding$8;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->j:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->j:Landroid/view/Choreographer$FrameCallback;

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->k:Landroid/os/Handler;

    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 15
    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->i(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    return-void
.end method

.method protected static B([FI)F
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static C([II)I
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static C0(Landroid/util/LongSparseArray;ILjava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LongSparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static D([JI)J
    .locals 2

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-wide v0, p0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method protected static D0(Landroid/util/SparseArray;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static E([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static E0(Landroid/util/SparseBooleanArray;IZ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static F([SI)S
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-short p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static F0(Landroid/util/SparseIntArray;II)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static G([ZI)Z
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-boolean p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static G0(Landroid/util/SparseLongArray;IJ)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static H(Landroid/util/SparseIntArray;I)I
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static H0(Landroidx/collection/LongSparseArray;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static I(Landroid/util/SparseLongArray;I)J
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method protected static I0(Ljava/util/List;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method protected static J(Landroid/util/LongSparseArray;I)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LongSparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static J0(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;TK;TT;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static K(Landroid/util/SparseArray;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static K0([BIB)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput-byte p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static L(Landroidx/collection/LongSparseArray;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 1
    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static L0([CIC)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput-char p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static M(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static M0([DID)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput-wide p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static N(Landroid/util/SparseBooleanArray;I)Z
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static N0([FIF)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static O0([III)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static P0([JIJ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput-wide p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static Q(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Landroidx/databinding/ViewDataBinding;->i(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    move-result-object p4

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method protected static Q0([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput-object p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static R(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected static R0([SIS)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput-short p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static S(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 1
    invoke-static/range {p1 .. p1}, Landroidx/databinding/ViewDataBinding;->r(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v9, "layout"

    const/4 v2, -0x1

    const/4 v11, 0x1

    if-eqz p5, :cond_5

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x5f

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    add-int/2addr v3, v11

    .line 6
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->R(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->i0(Ljava/lang/String;I)I

    move-result v1

    .line 8
    aget-object v3, p2, v1

    if-nez v3, :cond_2

    .line 9
    aput-object v0, p2, v1

    :cond_2
    if-nez v7, :cond_3

    const/4 v1, -0x1

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    const/4 v3, 0x0

    :goto_1
    move v12, v1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_8

    const-string v3, "binding_"

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 11
    sget v3, Landroidx/databinding/ViewDataBinding;->v:I

    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->i0(Ljava/lang/String;I)I

    move-result v1

    .line 12
    aget-object v3, p2, v1

    if-nez v3, :cond_6

    .line 13
    aput-object v0, p2, v1

    :cond_6
    if-nez v7, :cond_7

    const/4 v1, -0x1

    :cond_7
    move v12, v1

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    const/4 v12, -0x1

    :goto_2
    if-nez v3, :cond_9

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_9

    if-eqz v8, :cond_9

    .line 15
    invoke-virtual {v8, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ltz v1, :cond_9

    aget-object v2, p2, v1

    if-nez v2, :cond_9

    .line 16
    aput-object v0, p2, v1

    .line 17
    :cond_9
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    .line 18
    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v0, v14, :cond_e

    .line 20
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ltz v12, :cond_c

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_0"

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 24
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_c

    .line 25
    invoke-static {v3, v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->o(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;I)I

    move-result v3

    if-ltz v3, :cond_c

    add-int/lit8 v1, v3, 0x1

    .line 26
    iget-object v4, v7, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    aget-object v4, v4, v12

    aget v4, v4, v3

    .line 27
    iget-object v5, v7, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    aget-object v5, v5, v12

    aget v3, v5, v3

    .line 28
    invoke-static {v13, v0}, Landroidx/databinding/ViewDataBinding;->p(Landroid/view/ViewGroup;I)I

    move-result v5

    if-ne v5, v0, :cond_a

    .line 29
    invoke-static {v6, v2, v3}, Landroidx/databinding/DataBindingUtil;->a(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    :goto_4
    move v10, v0

    move v11, v1

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    sub-int/2addr v5, v0

    add-int/2addr v5, v11

    .line 30
    new-array v15, v5, [Landroid/view/View;

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v5, :cond_b

    add-int v11, v0, v10

    .line 31
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    aput-object v11, v15, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_5

    .line 32
    :cond_b
    invoke-static {v6, v15, v3}, Landroidx/databinding/DataBindingUtil;->b(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v0, v5

    goto :goto_4

    :cond_c
    move v10, v0

    move v11, v1

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_d

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 33
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->S(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    :cond_d
    const/4 v0, 0x1

    add-int/lit8 v1, v10, 0x1

    move v0, v1

    move v1, v11

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_e
    return-void
.end method

.method protected static S0([ZIZ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aput-boolean p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected static T(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 6

    .line 1
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->S(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    return-object p2
.end method

.method protected static V(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 7

    .line 1
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 2
    :goto_0
    array-length v0, p1

    if-ge v6, v0, :cond_0

    .line 3
    aget-object v1, p1, v6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->S(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method protected static X(Ljava/lang/String;B)B
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method protected static Z(Ljava/lang/String;C)C
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method static synthetic b(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    return p1
.end method

.method protected static b0(Ljava/lang/String;D)D
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method static synthetic c(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method protected static c0(Ljava/lang/String;F)F
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method static synthetic d(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->c:Z

    return p1
.end method

.method protected static d0(Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method static synthetic e()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->j0()V

    return-void
.end method

.method static synthetic f(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->f:Landroid/view/View;

    return-object p0
.end method

.method protected static f0(Ljava/lang/String;J)J
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method static synthetic g()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->D:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method protected static g0(Ljava/lang/String;S)S
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static getBuildSdkInt()I
    .locals 1

    .line 1
    sget v0, Landroidx/databinding/ViewDataBinding;->r:I

    return v0
.end method

.method protected static h(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->i(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    move-result-object p0

    .line 2
    invoke-static {p0, p1, p2}, Landroidx/databinding/DataBindingUtil;->a(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method protected static h0(Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static i(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Landroidx/databinding/DataBindingComponent;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Landroidx/databinding/DataBindingComponent;

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static i0(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    mul-int/lit8 v1, v1, 0xa

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static j0()V
    .locals 2

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->C:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroidx/databinding/WeakListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/databinding/WeakListener;

    .line 4
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->unregister()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->h:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    .line 6
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/CallbackRegistry;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2, p0, v0, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/CallbackRegistry;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 10
    :cond_2
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->d:Z

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    .line 12
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/CallbackRegistry;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    :cond_3
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->h:Z

    return-void
.end method

.method protected static n(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->l()V

    return-void
.end method

.method private static o(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;I)I
    .locals 2

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 3
    iget-object p2, p2, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    aget-object p2, p2, p3

    .line 4
    array-length p3, p2

    :goto_0
    if-ge p1, p3, :cond_1

    .line 5
    aget-object v0, p2, p1

    .line 6
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method protected static o0(Ljava/lang/Byte;)B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    :goto_0
    return p0
.end method

.method private static p(Landroid/view/ViewGroup;I)I
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    :goto_0
    if-ge v4, v3, :cond_3

    .line 6
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 8
    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_1

    return p1

    .line 11
    :cond_1
    invoke-static {v5, v2}, Landroidx/databinding/ViewDataBinding;->R(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    move p1, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method protected static p0(Ljava/lang/Character;)C
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    :goto_0
    return p0
.end method

.method protected static q0(Ljava/lang/Double;)D
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method static r(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget v0, Landroidx/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/databinding/ViewDataBinding;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static r0(Ljava/lang/Float;)F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method protected static s(Landroid/view/View;I)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method protected static s0(Ljava/lang/Integer;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected static t(Landroid/view/View;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method protected static t0(Ljava/lang/Long;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected static u(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected static u0(Ljava/lang/Short;)S
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    :goto_0
    return p0
.end method

.method protected static v(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;TK;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static w([BI)B
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-byte p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static w0(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected static x0(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;)V
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0, p2}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_1
    return-void
.end method

.method protected static y([CI)C
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-char p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static z([DI)D
    .locals 2

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-wide v0, p0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method protected A0(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Landroidx/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected B0([Landroid/view/View;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    sget v3, Landroidx/databinding/library/R$id;->dataBinding:I

    invoke-virtual {v2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected O(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected P(ILjava/lang/Object;I)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->W(ILjava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->n0()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected T0(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/databinding/WeakListener;->unregister()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected U0(ILandroidx/lifecycle/LiveData;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/LiveData<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->p:Z

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Landroidx/databinding/ViewDataBinding;->A:Landroidx/databinding/CreateWeakListener;

    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->Y0(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->p:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->p:Z

    .line 4
    throw p1
.end method

.method protected V0(ILandroidx/databinding/Observable;)Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->x:Landroidx/databinding/CreateWeakListener;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->Y0(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result p1

    return p1
.end method

.method protected abstract W(ILjava/lang/Object;I)Z
.end method

.method protected W0(ILandroidx/databinding/ObservableList;)Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->y:Landroidx/databinding/CreateWeakListener;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->Y0(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result p1

    return p1
.end method

.method protected X0(ILandroidx/databinding/ObservableMap;)Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->z:Landroidx/databinding/CreateWeakListener;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->Y0(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result p1

    return p1
.end method

.method protected Y0(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->T0(I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->l0(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V

    return v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->T0(I)Z

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->l0(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V

    return v1
.end method

.method public addOnRebindCallback(Landroidx/databinding/OnRebindCallback;)V
    .locals 2
    .param p1    # Landroidx/databinding/OnRebindCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/CallbackRegistry;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/databinding/CallbackRegistry;

    sget-object v1, Landroidx/databinding/ViewDataBinding;->B:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    invoke-direct {v0, v1}, Landroidx/databinding/CallbackRegistry;-><init>(Landroidx/databinding/CallbackRegistry$NotifierCallback;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/CallbackRegistry;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/CallbackRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/CallbackRegistry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public executePendingBindings()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->m:Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->l()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :goto_0
    return-void
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->f:Landroid/view/View;

    return-object v0
.end method

.method public abstract hasPendingBindings()Z
.end method

.method public abstract invalidateAll()V
.end method

.method protected j(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->l:Landroidx/databinding/DataBindingComponent;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required DataBindingComponent is null in class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". A BindingAdapter in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don\'t use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract k()V
.end method

.method protected l0(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Landroidx/databinding/ViewDataBinding;->C:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {p3, p0, p1, v0}, Landroidx/databinding/CreateWeakListener;->create(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;

    move-result-object v0

    .line 3
    iget-object p3, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    aput-object v0, p3, p1

    .line 4
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroidx/databinding/WeakListener;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 6
    :cond_1
    invoke-virtual {v0, p2}, Landroidx/databinding/WeakListener;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method protected n0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->m:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->n0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 5
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->c:Z

    if-eqz v0, :cond_2

    .line 8
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->c:Z

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->w:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->i:Landroid/view/Choreographer;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->j:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->k:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void
.end method

.method public removeOnRebindCallback(Landroidx/databinding/OnRebindCallback;)V
    .locals 1
    .param p1    # Landroidx/databinding/OnRebindCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/CallbackRegistry;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/databinding/CallbackRegistry;->remove(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/lifecycle/LifecycleOwner;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->o:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 4
    :cond_1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->n:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->o:Landroidx/databinding/ViewDataBinding$OnStartListener;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroidx/databinding/ViewDataBinding$OnStartListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/ViewDataBinding$1;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->o:Landroidx/databinding/ViewDataBinding$OnStartListener;

    .line 7
    :cond_2
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->o:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 8
    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3, p1}, Landroidx/databinding/WeakListener;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public abstract setVariable(ILjava/lang/Object;)Z
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public unbind()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->e:[Landroidx/databinding/WeakListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Landroidx/databinding/WeakListener;->unregister()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected z0(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->m:Landroidx/databinding/ViewDataBinding;

    :cond_0
    return-void
.end method
