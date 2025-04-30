.class public Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;
.super Ljava/lang/Object;
.source "FullScreenActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/FullScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/media/MediaPlayer;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo$a;

    invoke-direct {v0}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo$a;-><init>()V

    sput-object v0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Landroid/media/MediaPlayer;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:I

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:Z

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 8
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Landroid/media/MediaPlayer;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:I

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:Z

    .line 26
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 27
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Landroid/media/MediaPlayer;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:I

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:Z

    .line 38
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 39
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:I

    .line 40
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 42
    iput p3, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:I

    .line 43
    iput-boolean p4, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:Z

    .line 44
    iput-boolean p5, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 45
    iput p6, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Landroid/media/MediaPlayer;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:I

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:Z

    .line 15
    iput-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    .line 16
    iput v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:I

    .line 17
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:I

    return v0
.end method

.method public c()Landroid/media/MediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:Z

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:I

    return-void
.end method

.method public j(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Landroid/media/MediaPlayer;

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:I

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoInfo{playUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coverUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mediaPlayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
