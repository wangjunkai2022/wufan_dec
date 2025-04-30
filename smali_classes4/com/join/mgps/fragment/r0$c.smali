.class Lcom/join/mgps/fragment/r0$c;
.super Ljava/lang/Object;
.source "ForumIndexFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/r0;->w0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;

.field final synthetic b:Lcom/join/mgps/fragment/r0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/r0;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/r0$c;->b:Lcom/join/mgps/fragment/r0;

    iput-object p2, p0, Lcom/join/mgps/fragment/r0$c;->a:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r0$c;->b:Lcom/join/mgps/fragment/r0;

    iget-object v1, p0, Lcom/join/mgps/fragment/r0$c;->a:Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/r0;->h1(Lcom/join/mgps/fragment/r0;Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;)V

    return-void
.end method
