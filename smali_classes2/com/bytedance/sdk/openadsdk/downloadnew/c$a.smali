.class public Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;
.super Ljava/lang/Object;
.source "TTDownloadLibUrlConnection4DZ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Map;ILjava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;->a:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;->b:Ljava/util/Map;

    .line 4
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;->c:I

    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;->d:Ljava/net/HttpURLConnection;

    return-void
.end method
