.class public Lcom/join/mgps/Util/HtmlDocUtil$d;
.super Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;
.source "HtmlDocUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/HtmlDocUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/Util/HtmlDocUtil$d;->c:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/Util/HtmlDocUtil$d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/HtmlDocUtil$d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/HtmlDocUtil$d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/HtmlDocUtil$d;->c:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/HtmlDocUtil$d;->d:Ljava/lang/String;

    return-void
.end method
