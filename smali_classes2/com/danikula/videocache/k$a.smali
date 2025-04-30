.class Lcom/danikula/videocache/k$a;
.super Ljava/lang/Object;
.source "HttpUrlSource.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danikula/videocache/k;->g(JI)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/danikula/videocache/k;


# direct methods
.method constructor <init>(Lcom/danikula/videocache/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/danikula/videocache/k$a;->a:Lcom/danikula/videocache/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
