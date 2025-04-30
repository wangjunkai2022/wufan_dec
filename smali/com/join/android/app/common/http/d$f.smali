.class Lcom/join/android/app/common/http/d$f;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/d;->T(Lokhttp3/Request;Ljava/lang/Exception;Lcom/join/android/app/common/http/d$p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/http/d$p;

.field final synthetic b:Lokhttp3/Request;

.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:Lcom/join/android/app/common/http/d;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$f;->d:Lcom/join/android/app/common/http/d;

    iput-object p2, p0, Lcom/join/android/app/common/http/d$f;->a:Lcom/join/android/app/common/http/d$p;

    iput-object p3, p0, Lcom/join/android/app/common/http/d$f;->b:Lokhttp3/Request;

    iput-object p4, p0, Lcom/join/android/app/common/http/d$f;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$f;->a:Lcom/join/android/app/common/http/d$p;

    iget-object v1, p0, Lcom/join/android/app/common/http/d$f;->b:Lokhttp3/Request;

    iget-object v2, p0, Lcom/join/android/app/common/http/d$f;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/http/d$p;->d(Lokhttp3/Request;Ljava/lang/Exception;)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/http/d$f;->a:Lcom/join/android/app/common/http/d$p;

    invoke-virtual {v0}, Lcom/join/android/app/common/http/d$p;->b()V

    return-void
.end method
