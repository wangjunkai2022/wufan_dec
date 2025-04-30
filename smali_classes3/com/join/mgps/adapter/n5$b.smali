.class Lcom/join/mgps/adapter/n5$b;
.super Ljava/lang/Object;
.source "SearchSimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/n5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/join/mgps/adapter/n5;


# direct methods
.method private constructor <init>(Lcom/join/mgps/adapter/n5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/n5$b;->c:Lcom/join/mgps/adapter/n5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/adapter/n5;Lcom/join/mgps/adapter/n5$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/n5$b;-><init>(Lcom/join/mgps/adapter/n5;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/n5$b;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/n5$b;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public c(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/n5$b;->a:Landroid/widget/ImageView;

    return-void
.end method

.method public d(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/n5$b;->b:Landroid/widget/TextView;

    return-void
.end method
