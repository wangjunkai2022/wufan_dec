.class Lcom/join/mgps/activity/HavenWishActivity_$d;
.super Ljava/lang/Object;
.source "HavenWishActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HavenWishActivity_;->G0(Lcom/join/mgps/dto/HavenWishResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/HavenWishResultBean;

.field final synthetic b:Lcom/join/mgps/activity/HavenWishActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HavenWishActivity_;Lcom/join/mgps/dto/HavenWishResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HavenWishActivity_$d;->b:Lcom/join/mgps/activity/HavenWishActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/HavenWishActivity_$d;->a:Lcom/join/mgps/dto/HavenWishResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HavenWishActivity_$d;->b:Lcom/join/mgps/activity/HavenWishActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/HavenWishActivity_$d;->a:Lcom/join/mgps/dto/HavenWishResultBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/HavenWishActivity_;->I0(Lcom/join/mgps/activity/HavenWishActivity_;Lcom/join/mgps/dto/HavenWishResultBean;)V

    return-void
.end method
