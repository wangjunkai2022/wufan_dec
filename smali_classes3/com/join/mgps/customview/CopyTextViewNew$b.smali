.class Lcom/join/mgps/customview/CopyTextViewNew$b;
.super Ljava/lang/Object;
.source "CopyTextViewNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/CopyTextViewNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/CopyTextViewNew;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/CopyTextViewNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew$b;->a:Lcom/join/mgps/customview/CopyTextViewNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(F)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tbl>>>>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ">>>>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/customview/CopyTextViewNew$b;->a:Lcom/join/mgps/customview/CopyTextViewNew;

    invoke-static {v1}, Lcom/join/mgps/customview/CopyTextViewNew;->a(Lcom/join/mgps/customview/CopyTextViewNew;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/CopyTextViewNew$b;->a:Lcom/join/mgps/customview/CopyTextViewNew;

    iget-object p1, p1, Lcom/join/mgps/customview/CopyTextViewNew;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
