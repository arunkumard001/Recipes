class Data {
  List<Message>? message;

  Data({this.message});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['message'] != null) {
      message = <Message>[];
      json['message'].forEach((v) {
        message!.add(Message.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Message {
  String? name;
  String? creation;
  String? modified;
  String? modifiedBy;
  String? owner;
  int? docstatus;
  dynamic parent;
  dynamic parentfield;
  dynamic parenttype;
  int? idx;
  String? image;
  String? description;
  String? title;
  int? rating;
  dynamic dUserTags;
  dynamic dComments;
  dynamic dAssign;
  dynamic dLikedBy;

  Message(
      {this.name,
      this.creation,
      this.modified,
      this.modifiedBy,
      this.owner,
      this.docstatus,
      this.parent,
      this.parentfield,
      this.parenttype,
      this.idx,
      this.image,
      this.description,
      this.title,
      this.rating,
      this.dUserTags,
      this.dComments,
      this.dAssign,
      this.dLikedBy});

  Message.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    creation = json['creation'];
    modified = json['modified'];
    modifiedBy = json['modified_by'];
    owner = json['owner'];
    docstatus = json['docstatus'];
    parent = json['parent'];
    parentfield = json['parentfield'];
    parenttype = json['parenttype'];
    idx = json['idx'];
    image = json['image'];
    description = json['description'];
    title = json['title'];
    rating = json['rating'];
    dUserTags = json['_user_tags'];
    dComments = json['_comments'];
    dAssign = json['_assign'];
    dLikedBy = json['_liked_by'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['creation'] = creation;
    data['modified'] = modified;
    data['modified_by'] = modifiedBy;
    data['owner'] = owner;
    data['docstatus'] = docstatus;
    data['parent'] = parent;
    data['parentfield'] = parentfield;
    data['parenttype'] = parenttype;
    data['idx'] = idx;
    data['image'] = image;
    data['description'] = description;
    data['title'] = title;
    data['rating'] = rating;
    data['_user_tags'] = dUserTags;
    data['_comments'] = dComments;
    data['_assign'] = dAssign;
    data['_liked_by'] = dLikedBy;
    return data;
  }
}
