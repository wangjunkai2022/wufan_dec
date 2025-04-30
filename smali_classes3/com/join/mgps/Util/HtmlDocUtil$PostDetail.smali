.class public Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;
.super Ljava/lang/Object;
.source "HtmlDocUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/HtmlDocUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;
    }
.end annotation


# instance fields
.field public a:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b:Ljava/lang/Object;

    return-void
.end method

.method public c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    return-void
.end method

.method public getType()Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    return-object v0
.end method
