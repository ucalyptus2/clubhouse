.class public final Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "StickyHeaderLinearLayoutManager.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Landroid/os/Parcelable;

.field public final i:I

.field public final j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState$a;

    invoke-direct {v0}, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState$a;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->h:Landroid/os/Parcelable;

    iput p2, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->i:I

    iput p3, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->j:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;

    iget-object v0, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->h:Landroid/os/Parcelable;

    iget-object v1, p1, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->h:Landroid/os/Parcelable;

    invoke-static {v0, v1}, La1/n/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->i:I

    iget v1, p1, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->i:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->j:I

    iget p1, p1, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->j:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->h:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "SavedState(superState="

    invoke-static {v0}, Ld0/e/a/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->h:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scrollPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scrollOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->j:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Ld0/e/a/a/a;->q(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->h:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/airbnb/epoxy/stickyheader/StickyHeaderLinearLayoutManager$SavedState;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
