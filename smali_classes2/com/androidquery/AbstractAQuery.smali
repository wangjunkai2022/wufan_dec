.class public abstract Lcom/androidquery/AbstractAQuery;
.super Ljava/lang/Object;
.source "AbstractAQuery.java"

# interfaces
.implements Lcom/androidquery/util/Constants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidquery/AbstractAQuery<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/androidquery/util/Constants;"
    }
.end annotation


# static fields
.field private static LAYER_TYPE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final ON_CLICK_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static ON_ITEM_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final OVER_SCROLL_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static PENDING_TRANSITION_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TEXT_CHANGE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static dialogs:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Dialog;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private act:Landroid/app/Activity;

.field protected ah:Lcom/androidquery/auth/AccountHandle;

.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private policy:I

.field protected progress:Ljava/lang/Object;

.field private proxy:Lorg/apache/http/HttpHost;

.field private root:Landroid/view/View;

.field private trans:Lcom/androidquery/callback/Transformer;

.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v4, Landroid/widget/AdapterView;

    aput-object v4, v2, v3

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v6, v2, v7

    sput-object v2, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Class;

    .line 3
    const-class v6, Landroid/widget/AbsListView;

    aput-object v6, v2, v3

    aput-object v4, v2, v0

    sput-object v2, Lcom/androidquery/AbstractAQuery;->ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    .line 4
    const-class v2, Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    aput-object v4, v1, v0

    aput-object v4, v1, v5

    aput-object v4, v1, v7

    sput-object v1, Lcom/androidquery/AbstractAQuery;->TEXT_CHANGE_SIG:[Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Class;

    aput-object v4, v1, v3

    aput-object v4, v1, v0

    .line 5
    sput-object v1, Lcom/androidquery/AbstractAQuery;->PENDING_TRANSITION_SIG:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/Class;

    aput-object v4, v1, v3

    .line 6
    sput-object v1, Lcom/androidquery/AbstractAQuery;->OVER_SCROLL_SIG:[Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Class;

    aput-object v4, v1, v3

    .line 7
    const-class v2, Landroid/graphics/Paint;

    aput-object v2, v1, v0

    sput-object v1, Lcom/androidquery/AbstractAQuery;->LAYER_TYPE_SIG:[Ljava/lang/Class;

    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 3
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 10
    iput-object p2, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 11
    iput-object p2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 12
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 15
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 6
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 7
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    return-void
.end method

.method private findView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private findView(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const v1, 0x1020002

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private varargs findView([I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 10
    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 11
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method private setScrollListener()Lcom/androidquery/util/Common;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    const v1, 0x40ff0002

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/util/Common;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/androidquery/util/Common;

    invoke-direct {v2}, Lcom/androidquery/util/Common;-><init>()V

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    const-string v0, "set scroll listenr"

    .line 6
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    :cond_0
    return-object v2
.end method

.method private size(ZIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    int-to-float p2, p2

    .line 4
    invoke-static {v1, p2}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p2

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 6
    :cond_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public adapter(Landroid/widget/Adapter;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Adapter;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/AdapterView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public adapter(Landroid/widget/ExpandableListAdapter;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ExpandableListAdapter;",
            ")TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Landroid/widget/ExpandableListView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;JLcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;J",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 4
    invoke-virtual {p5, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p2, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p3, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->expire(J)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p5}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;JLjava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;J",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 10
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p5, p6}, Lcom/androidquery/callback/AbstractAjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/androidquery/callback/AjaxCallback;

    const/4 p6, 0x1

    invoke-virtual {p5, p6}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p5, p3, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->expire(J)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p3, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p2, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 7
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p3, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 12
    invoke-virtual {p4, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->params(Ljava/util/Map;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0, p4}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 15
    invoke-virtual {v0, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p4, p5}, Lcom/androidquery/callback/AbstractAjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajaxCancel()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/androidquery/callback/AbstractAjaxCallback;->cancel()V

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public animate(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/androidquery/AbstractAQuery;->animate(ILandroid/view/animation/Animation$AnimationListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public animate(ILandroid/view/animation/Animation$AnimationListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/animation/Animation$AnimationListener;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->animate(Landroid/view/animation/Animation;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public auth(Lcom/androidquery/auth/AccountHandle;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/auth/AccountHandle;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public background(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public backgroundColor(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public backgroundColorId(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public cache(Ljava/lang/String;J)Lcom/androidquery/AbstractAQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 1
    const-class v2, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;JLjava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public checked(Z)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/CompoundButton;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public clear()Lcom/androidquery/AbstractAQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2
    instance-of v1, v0, Landroid/widget/ImageView;

    const v2, 0x40ff0001

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Landroid/webkit/WebView;

    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 10
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 12
    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public click()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public clickable(Z)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public clicked(Landroid/view/View$OnClickListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public clicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    sget-object v1, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->clicked(Landroid/view/View$OnClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method protected create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/AbstractAQuery;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    iput-object v0, p1, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p1
.end method

.method public dataChanged()Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/AdapterView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Landroid/widget/BaseAdapter;

    .line 6
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->method(I)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 4
    invoke-virtual {v0, p3, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->delete(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public dismiss()Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .line 8
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "Ljava/io/File;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-class v0, Ljava/io/File;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->targetFile(Ljava/io/File;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 4
    invoke-virtual {v0, p3, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->download(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public enabled(Z)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public expand(IZ)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Landroid/widget/ExpandableListView;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public expand(Z)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Landroid/widget/ExpandableListView;

    .line 8
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public find(I)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public getButton()Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCachedImage(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/androidquery/AbstractAQuery;->getCachedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCachedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 2
    invoke-static {p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getExpandableListView()Landroid/widget/ExpandableListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public getGallery()Landroid/widget/Gallery;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Gallery;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRatingBar()Landroid/widget/RatingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    return-object v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSpinner()Landroid/widget/Spinner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public gone()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public hardwareAccelerated11()Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public height(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public height(IZ)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 4
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public id(I)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 4
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public id(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public varargs id([I)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView([I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(I)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Landroid/graphics/Bitmap;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TT;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Landroid/graphics/Bitmap;F)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "F)TT;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 44
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 45
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Landroid/graphics/drawable/Drawable;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 33
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/io/File;I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/androidquery/AbstractAQuery;->image(Ljava/io/File;ZILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/io/File;ZILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZI",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 39
    new-instance p4, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {p4}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    :cond_0
    move-object v6, p4

    .line 40
    invoke-virtual {v6, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, p4

    :goto_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    .line 42
    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/androidquery/callback/ImageOptions;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method protected image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/androidquery/callback/ImageOptions;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    iget-object v6, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    iget-object v8, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    move-object v4, p1

    move-object v7, p2

    move-object v9, p3

    invoke-static/range {v1 .. v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;Lorg/apache/http/HttpHost;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;ZZ)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII)TT;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 19
    invoke-virtual/range {v0 .. v7}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lcom/androidquery/AbstractAQuery;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "I)TT;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 20
    invoke-virtual/range {v0 .. v8}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lcom/androidquery/AbstractAQuery;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "IF)TT;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 21
    invoke-virtual/range {v0 .. v10}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFILjava/lang/String;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method protected image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFILjava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "IFI",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 22
    iget-object v1, v0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 23
    iget-object v2, v0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v14, v0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    iget-object v15, v0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    iget v1, v0, Lcom/androidquery/AbstractAQuery;->policy:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    move-object/from16 v18, v1

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v17, p9

    move-object/from16 v19, p10

    invoke-static/range {v2 .. v19}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 25
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    .line 35
    invoke-virtual {p6, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object p4

    .line 36
    invoke-virtual {p4, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {p1, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    .line 37
    invoke-virtual {p0, p6}, Lcom/androidquery/AbstractAQuery;->image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public inflate(Landroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x40ff0003

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    :goto_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method public invalidate(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public invisible()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method protected invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AbstractAjaxCallback<",
            "*TK;>;)TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer(Lcom/androidquery/callback/Transformer;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget v0, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->policy(I)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/app/Activity;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 17
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    :cond_0
    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isChecked()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/CompoundButton;

    .line 3
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExist()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public itemClicked(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")TT;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/widget/AdapterView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public itemClicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    sget-object v1, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->itemClicked(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public itemSelected(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")TT;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/widget/AdapterView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public itemSelected(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    sget-object v1, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->itemSelected(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public longClick()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public longClicked(Landroid/view/View$OnLongClickListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnLongClickListener;",
            ")TT;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public longClicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    sget-object v1, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->longClicked(Landroid/view/View$OnLongClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public makeSharedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 5
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0x0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v3, v0

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    invoke-static {p2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 11
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 12
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 13
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 14
    invoke-static {p2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 15
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 16
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 17
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 18
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 19
    :goto_0
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-object v0
.end method

.method public margin(FFFF)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p1

    .line 6
    invoke-static {v1, p2}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p2

    .line 7
    invoke-static {v1, p3}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p3

    .line 8
    invoke-static {v1, p4}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p4

    .line 9
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 10
    iget-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public overridePendingTransition5(II)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    sget-object v4, Lcom/androidquery/AbstractAQuery;->PENDING_TRANSITION_SIG:[Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, p1

    const-string v1, "overridePendingTransition"

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public parent(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_2

    :goto_1
    const/4 v0, 0x0

    .line 5
    :goto_2
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public policy(I)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p5, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->method(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-string p4, "Content-Type"

    invoke-virtual {p1, p4, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-string p2, "%entity"

    invoke-virtual {p1, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p5}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 3
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-direct {v3, p2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->post(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public progress(I)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public progress(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public progress(Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public proxy(Ljava/lang/String;I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p5, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const/4 p4, 0x3

    invoke-virtual {p1, p4}, Lcom/androidquery/callback/AbstractAjaxCallback;->method(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-string p4, "Content-Type"

    invoke-virtual {p1, p4, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-string p2, "%entity"

    invoke-virtual {p1, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p5}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 3
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-direct {v3, p2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->put(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public rating(F)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/RatingBar;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public recycle(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 2
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method protected reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 2
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/androidquery/AbstractAQuery;->policy:I

    .line 5
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    return-void
.end method

.method public scrolled(Landroid/widget/AbsListView$OnScrollListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->setScrollListener()Lcom/androidquery/util/Common;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidquery/util/Common;->forward(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public scrolledBottom(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->setScrollListener()Lcom/androidquery/util/Common;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/androidquery/AbstractAQuery;->ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method protected self()Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public setLayerType11(ILandroid/graphics/Paint;)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Paint;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    sget-object v4, Lcom/androidquery/AbstractAQuery;->LAYER_TYPE_SIG:[Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const-string v1, "setLayerType"

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public setOverScrollMode9(I)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    sget-object v4, Lcom/androidquery/AbstractAQuery;->OVER_SCROLL_SIG:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const-string v1, "setOverScrollMode"

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public setSelection(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/AdapterView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public shouldDelay(IIZLandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-static {p1, p2, p4, p5, p6}, Lcom/androidquery/util/Common;->shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 1

    .line 5
    instance-of v0, p3, Landroid/widget/ExpandableListView;

    if-nez v0, :cond_0

    .line 6
    invoke-static {p1, p2, p3, p4}, Lcom/androidquery/util/Common;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please use the other shouldDelay methods for expandable list."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldDelay(IZLandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 0

    const/4 p2, -0x1

    .line 3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/androidquery/util/Common;->shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;F)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p2, p3, p4, v0}, Lcom/androidquery/util/Common;->shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z

    move-result p1

    return p1
.end method

.method public shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/androidquery/util/Common;->shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z

    move-result p1

    return p1
.end method

.method public show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 2
    sget-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public sync(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 2
    invoke-virtual {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->block()V

    .line 3
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public tag(ILjava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public tag(Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public text(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public varargs text(I[Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public text(Landroid/text/Spanned;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            ")TT;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public text(Ljava/lang/CharSequence;Z)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Z)TT;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->gone()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public textChanged(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/TextView;

    .line 3
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->TEXT_CHANGE_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public textColor(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public textColorId(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->textColor(I)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public textSize(F)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public transformer(Lcom/androidquery/callback/Transformer;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/Transformer;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public transparent(Z)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->transparent(Landroid/view/View;Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public visibility(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public visible()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public webImage(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    .line 1
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/androidquery/AbstractAQuery;->webImage(Ljava/lang/String;ZZI)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public webImage(Ljava/lang/String;ZZI)Lcom/androidquery/AbstractAQuery;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/androidquery/AbstractAQuery;->setLayerType11(ILandroid/graphics/Paint;)Lcom/androidquery/AbstractAQuery;

    .line 4
    new-instance v0, Lcom/androidquery/util/WebImage;

    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    move-object v3, v2

    check-cast v3, Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    move-object v2, v0

    move-object v4, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/androidquery/util/WebImage;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V

    .line 5
    invoke-virtual {v0}, Lcom/androidquery/util/WebImage;->load()V

    .line 6
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public width(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1, v0}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 2
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public width(IZ)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 4
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method
