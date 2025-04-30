.class Lcom/join/android/app/common/http/h$b;
.super Lcom/join/android/app/common/http/d$p;
.source "RPCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/h;->e(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;Lcom/join/android/app/common/http/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/android/app/common/http/d$p<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/common/http/b;

.field final synthetic c:Lcom/join/android/app/common/http/h;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/h;Lcom/join/android/app/common/http/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/h$b;->c:Lcom/join/android/app/common/http/h;

    iput-object p2, p0, Lcom/join/android/app/common/http/h$b;->b:Lcom/join/android/app/common/http/b;

    invoke-direct {p0}, Lcom/join/android/app/common/http/d$p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/common/http/h$b;->b:Lcom/join/android/app/common/http/b;

    invoke-interface {p1, p2}, Lcom/join/android/app/common/http/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/android/app/common/http/h$b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/h$b;->b:Lcom/join/android/app/common/http/b;

    invoke-interface {v0, p1}, Lcom/join/android/app/common/http/b;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
