.class Lcom/join/mgps/Util/e2$b;
.super Ljava/lang/Object;
.source "TCUploadHelper.java"

# interfaces
.implements Lcom/tencent/cos/task/listener/IUploadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/e2;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/Util/e2;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/e2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/e2$b;->b:Lcom/join/mgps/Util/e2;

    iput-object p2, p0, Lcom/join/mgps/Util/e2$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p1, Landroid/os/Message;->what:I

    .line 3
    iget v0, p2, Lcom/tencent/cos/model/COSResult;->code:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 4
    iget-object p2, p2, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/join/mgps/Util/e2$b;->b:Lcom/join/mgps/Util/e2;

    invoke-static {p2}, Lcom/join/mgps/Util/e2;->b(Lcom/join/mgps/Util/e2;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p1, Landroid/os/Message;->what:I

    .line 3
    iget v0, p2, Lcom/tencent/cos/model/COSResult;->code:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 4
    iget-object p2, p2, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/join/mgps/Util/e2$b;->b:Lcom/join/mgps/Util/e2;

    invoke-static {p2}, Lcom/join/mgps/Util/e2;->b(Lcom/join/mgps/Util/e2;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProgress(Lcom/tencent/cos/model/COSRequest;JJ)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x1

    .line 2
    iput p2, p1, Landroid/os/Message;->what:I

    const/4 p2, 0x0

    .line 3
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 4
    iget-object p2, p0, Lcom/join/mgps/Util/e2$b;->a:Ljava/lang/String;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/join/mgps/Util/e2$b;->b:Lcom/join/mgps/Util/e2;

    invoke-static {p2}, Lcom/join/mgps/Util/e2;->b(Lcom/join/mgps/Util/e2;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
