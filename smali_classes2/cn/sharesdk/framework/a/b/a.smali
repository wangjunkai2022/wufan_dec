.class public Lcn/sharesdk/framework/a/b/a;
.super Lcn/sharesdk/framework/a/b/c;
.source "ApiEvent.java"


# static fields
.field private static c:I

.field private static d:J


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/framework/a/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "[API]"

    return-object v0
.end method

.method protected a(J)V
    .locals 0

    .line 1
    sput-wide p1, Lcn/sharesdk/framework/a/b/a;->d:J

    return-void
.end method

.method protected b()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method protected c()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method protected d()J
    .locals 2

    .line 1
    sget v0, Lcn/sharesdk/framework/a/b/a;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected e()J
    .locals 2

    .line 1
    sget-wide v0, Lcn/sharesdk/framework/a/b/a;->d:J

    return-wide v0
.end method

.method protected f()V
    .locals 1

    .line 1
    sget v0, Lcn/sharesdk/framework/a/b/a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/sharesdk/framework/a/b/a;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/sharesdk/framework/a/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/sharesdk/framework/a/b/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/framework/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
