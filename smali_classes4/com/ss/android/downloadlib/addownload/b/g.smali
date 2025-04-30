.class public Lcom/ss/android/downloadlib/addownload/b/g;
.super Ljava/lang/Object;
.source "OpenAppResult.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/ss/android/downloadlib/addownload/b/g;->a:I

    .line 6
    iput p2, p0, Lcom/ss/android/downloadlib/addownload/b/g;->b:I

    .line 7
    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/b/g;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lcom/ss/android/downloadlib/addownload/b/g;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadlib/addownload/b/g;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/downloadlib/addownload/b/g;->a:I

    return v0
.end method
