.class Lcom/join/mgps/activity/DocumentManageActivity_$c;
.super Ljava/lang/Object;
.source "DocumentManageActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DocumentManageActivity_;->e1(Lcom/join/mgps/dto/ArchiveNumDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ArchiveNumDataBean;

.field final synthetic b:Lcom/join/mgps/activity/DocumentManageActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/ArchiveNumDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_$c;->b:Lcom/join/mgps/activity/DocumentManageActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/DocumentManageActivity_$c;->a:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_$c;->b:Lcom/join/mgps/activity/DocumentManageActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity_$c;->a:Lcom/join/mgps/dto/ArchiveNumDataBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/DocumentManageActivity_;->h1(Lcom/join/mgps/activity/DocumentManageActivity_;Lcom/join/mgps/dto/ArchiveNumDataBean;)V

    return-void
.end method
