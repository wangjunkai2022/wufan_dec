.class Lcom/join/mgps/activity/TagAddActivity_$a;
.super Ljava/lang/Object;
.source "TagAddActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity_;->T0(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

.field final synthetic b:Lcom/join/mgps/activity/TagAddActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity_;Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity_$a;->b:Lcom/join/mgps/activity/TagAddActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/TagAddActivity_$a;->a:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity_$a;->b:Lcom/join/mgps/activity/TagAddActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity_$a;->a:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/TagAddActivity_;->c1(Lcom/join/mgps/activity/TagAddActivity_;Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V

    return-void
.end method
