.class Lcom/join/mgps/adapter/z1$c;
.super Ljava/lang/Object;
.source "GameOLNoOpenTestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic b:Lcom/join/mgps/adapter/z1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/z1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/z1$c;->b:Lcom/join/mgps/adapter/z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/z1$c;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/z1$c;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/z1$c;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/z1$c;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p1
.end method
