class GetApiModel {
    String? status;
    List<Datum>? data;
    RoleCounts? roleCounts;

    GetApiModel({
        this.status,
        this.data,
        this.roleCounts,
    });

    factory GetApiModel.fromJson(Map<String, dynamic> json) => GetApiModel(
        status: json["status"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        roleCounts: json["roleCounts"] == null ? null : RoleCounts.fromJson(json["roleCounts"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "roleCounts": roleCounts?.toJson(),
    };
}

class Datum {
    String? id;
    String? name;
    int? groupId;
    int? roleId;
    int? phoneNumber;
    int? empId;
    List<dynamic>? membership;
    List<dynamic>? accountDetails;
    List<dynamic>? experiences;
    int? operatorId;
    String? gender;
    Role? role;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    CampignCount? leadCounts;
    OrderCounts? orderCounts;
    CampignCount? campignCount;
    ServicerequestCount? servicerequestCount;
    String? rfid;
    String? reportingManager;

    Datum({
        this.id,
        this.name,
        this.groupId,
        this.roleId,
        this.phoneNumber,
        this.empId,
        this.membership,
        this.accountDetails,
        this.experiences,
        this.operatorId,
        this.gender,
        this.role,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.leadCounts,
        this.orderCounts,
        this.campignCount,
        this.servicerequestCount,
        this.rfid,
        this.reportingManager,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["name"],
        groupId: json["groupId"],
        roleId: json["roleId"],
        phoneNumber: json["phoneNumber"],
        empId: json["empId"],
        membership: json["membership"] == null ? [] : List<dynamic>.from(json["membership"]!.map((x) => x)),
        accountDetails: json["accountDetails"] == null ? [] : List<dynamic>.from(json["accountDetails"]!.map((x) => x)),
        experiences: json["experiences"] == null ? [] : List<dynamic>.from(json["experiences"]!.map((x) => x)),
        operatorId: json["operatorId"],
        gender: json["gender"],
        role: json["role"] == null ? null : Role.fromJson(json["role"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        leadCounts: json["leadCounts"] == null ? null : CampignCount.fromJson(json["leadCounts"]),
        orderCounts: json["orderCounts"] == null ? null : OrderCounts.fromJson(json["orderCounts"]),
        campignCount: json["campignCount"] == null ? null : CampignCount.fromJson(json["campignCount"]),
        servicerequestCount: json["ServicerequestCount"] == null ? null : ServicerequestCount.fromJson(json["ServicerequestCount"]),
        rfid: json["RFID"],
        reportingManager: json["reportingManager"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "groupId": groupId,
        "roleId": roleId,
        "phoneNumber": phoneNumber,
        "empId": empId,
        "membership": membership == null ? [] : List<dynamic>.from(membership!.map((x) => x)),
        "accountDetails": accountDetails == null ? [] : List<dynamic>.from(accountDetails!.map((x) => x)),
        "experiences": experiences == null ? [] : List<dynamic>.from(experiences!.map((x) => x)),
        "operatorId": operatorId,
        "gender": gender,
        "role": role?.toJson(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "leadCounts": leadCounts?.toJson(),
        "orderCounts": orderCounts?.toJson(),
        "campignCount": campignCount?.toJson(),
        "ServicerequestCount": servicerequestCount?.toJson(),
        "RFID": rfid,
        "reportingManager": reportingManager,
    };
}

class CampignCount {
    int? handedBycount;
    int? createdBycount;
    int? totalleadCount;

    CampignCount({
        this.handedBycount,
        this.createdBycount,
        this.totalleadCount,
    });

    factory CampignCount.fromJson(Map<String, dynamic> json) => CampignCount(
        handedBycount: json["handedBycount"],
        createdBycount: json["createdBycount"],
        totalleadCount: json["totalleadCount"],
    );

    Map<String, dynamic> toJson() => {
        "handedBycount": handedBycount,
        "createdBycount": createdBycount,
        "totalleadCount": totalleadCount,
    };
}

class OrderCounts {
    int? handedBycount;
    int? createdBycount;
    int? totalorderCount;

    OrderCounts({
        this.handedBycount,
        this.createdBycount,
        this.totalorderCount,
    });

    factory OrderCounts.fromJson(Map<String, dynamic> json) => OrderCounts(
        handedBycount: json["handedBycount"],
        createdBycount: json["createdBycount"],
        totalorderCount: json["totalorderCount"],
    );

    Map<String, dynamic> toJson() => {
        "handedBycount": handedBycount,
        "createdBycount": createdBycount,
        "totalorderCount": totalorderCount,
    };
}

class Role {
    int? roleId;
    String? name;

    Role({
        this.roleId,
        this.name,
    });

    factory Role.fromJson(Map<String, dynamic> json) => Role(
        roleId: json["roleId"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "roleId": roleId,
        "name": name,
    };
}

class ServicerequestCount {
    int? handedBycount;

    ServicerequestCount({
        this.handedBycount,
    });

    factory ServicerequestCount.fromJson(Map<String, dynamic> json) => ServicerequestCount(
        handedBycount: json["handedBycount"],
    );

    Map<String, dynamic> toJson() => {
        "handedBycount": handedBycount,
    };
}

class RoleCounts {
    int? total;
    int? manager;
    int? salesman;

    RoleCounts({
        this.total,
        this.manager,
        this.salesman,
    });

    factory RoleCounts.fromJson(Map<String, dynamic> json) => RoleCounts(
        total: json["total"],
        manager: json["manager"],
        salesman: json["salesman"],
    );

    Map<String, dynamic> toJson() => {
        "total": total,
        "manager": manager,
        "salesman": salesman,
    };
}
