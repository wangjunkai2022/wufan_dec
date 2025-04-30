.class Lcom/join/mgps/fragment/t0$e;
.super Ljava/lang/Object;
.source "ForumPostsFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/t0;->Q(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/fragment/t0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/t0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/t0$e;->b:Lcom/join/mgps/fragment/t0;

    iput p2, p0, Lcom/join/mgps/fragment/t0$e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t0$e;->b:Lcom/join/mgps/fragment/t0;

    iget v1, p0, Lcom/join/mgps/fragment/t0$e;->a:I

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/t0;->D0(Lcom/join/mgps/fragment/t0;I)V

    return-void
.end method
