.class Lcom/join/mgps/activity/message/b$g;
.super Ljava/lang/Object;
.source "CommunityFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/b;->Z(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/message/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/b;IILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/b$g;->d:Lcom/join/mgps/activity/message/b;

    iput p2, p0, Lcom/join/mgps/activity/message/b$g;->a:I

    iput p3, p0, Lcom/join/mgps/activity/message/b$g;->b:I

    iput-object p4, p0, Lcom/join/mgps/activity/message/b$g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/b$g;->d:Lcom/join/mgps/activity/message/b;

    iget v1, p0, Lcom/join/mgps/activity/message/b$g;->a:I

    iget v2, p0, Lcom/join/mgps/activity/message/b$g;->b:I

    iget-object v3, p0, Lcom/join/mgps/activity/message/b$g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/message/b;->j0(Lcom/join/mgps/activity/message/b;IILjava/lang/String;)V

    return-void
.end method
