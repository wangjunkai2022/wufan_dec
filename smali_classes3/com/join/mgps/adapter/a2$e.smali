.class Lcom/join/mgps/adapter/a2$e;
.super Ljava/lang/Object;
.source "GameOLOpenTestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field final synthetic b:Lcom/join/mgps/adapter/a2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/a2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/a2$e;->b:Lcom/join/mgps/adapter/a2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/a2$e;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/a2$e;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/a2$e;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/a2$e;->a:Landroid/widget/TextView;

    return-object p1
.end method
