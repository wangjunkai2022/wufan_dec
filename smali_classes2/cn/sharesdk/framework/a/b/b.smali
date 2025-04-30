.class public Lcn/sharesdk/framework/a/b/b;
.super Lcn/sharesdk/framework/a/b/c;
.source "AuthEvent.java"


# static fields
.field private static m:I

.field private static n:J


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


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

    const-string v0, "[AUT]"

    return-object v0
.end method

.method protected a(J)V
    .locals 0

    .line 1
    sput-wide p1, Lcn/sharesdk/framework/a/b/b;->n:J

    return-void
.end method

.method protected b()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method

.method protected c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected d()J
    .locals 2

    .line 1
    sget v0, Lcn/sharesdk/framework/a/b/b;->m:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected e()J
    .locals 2

    .line 1
    sget-wide v0, Lcn/sharesdk/framework/a/b/b;->n:J

    return-wide v0
.end method

.method protected f()V
    .locals 1

    .line 1
    sget v0, Lcn/sharesdk/framework/a/b/b;->m:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/sharesdk/framework/a/b/b;->m:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "\n"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/sharesdk/framework/a/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7c

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/sharesdk/framework/a/b/b;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/sharesdk/framework/a/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v3, p0, Lcn/sharesdk/framework/a/b/b;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/framework/a/b/c;->f:Ljava/lang/String;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/sharesdk/framework/a/b/b;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 7
    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .line 9
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 10
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    iget-object v0, p0, Lcn/sharesdk/framework/a/b/c;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcn/sharesdk/framework/a/b/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    iget-object v0, p0, Lcn/sharesdk/framework/a/b/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcn/sharesdk/framework/a/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
