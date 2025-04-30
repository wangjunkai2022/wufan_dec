.class public Lcom/join/mgps/dto/GradeListInfoData;
.super Ljava/lang/Object;
.source "GradeListInfoData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private grade_name:Ljava/lang/String;

.field private grade_number:I

.field private grade_people:Ljava/lang/String;

.field private is_open:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/GradeListInfoData;->grade_number:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/GradeListInfoData;->grade_name:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/GradeListInfoData;->grade_people:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Lcom/join/mgps/dto/GradeListInfoData;->is_open:Z

    return-void
.end method


# virtual methods
.method public getGrade_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GradeListInfoData;->grade_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GradeListInfoData;->grade_number:I

    return v0
.end method

.method public getGrade_people()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GradeListInfoData;->grade_people:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_open()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GradeListInfoData;->is_open:Z

    return v0
.end method

.method public setGrade_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GradeListInfoData;->grade_name:Ljava/lang/String;

    return-void
.end method

.method public setGrade_number(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GradeListInfoData;->grade_number:I

    return-void
.end method

.method public setGrade_people(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GradeListInfoData;->grade_people:Ljava/lang/String;

    return-void
.end method

.method public setIs_open(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GradeListInfoData;->is_open:Z

    return-void
.end method
