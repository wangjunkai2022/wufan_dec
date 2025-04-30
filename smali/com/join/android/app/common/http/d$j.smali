.class public Lcom/join/android/app/common/http/d$j;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/http/d;


# direct methods
.method public constructor <init>(Lcom/join/android/app/common/http/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$j;->a:Lcom/join/android/app/common/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/android/app/common/http/d$j;->b(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p4}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p4

    .line 4
    invoke-virtual {p4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p4

    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/http/d$j;->a:Lcom/join/android/app/common/http/d;

    invoke-static {v0}, Lcom/join/android/app/common/http/d;->n(Lcom/join/android/app/common/http/d;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p4

    .line 6
    new-instance v0, Lcom/join/android/app/common/http/d$j$a;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/join/android/app/common/http/d$j$a;-><init>(Lcom/join/android/app/common/http/d$j;Lcom/join/android/app/common/http/d$p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
