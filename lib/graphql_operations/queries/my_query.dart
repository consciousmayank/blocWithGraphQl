const String getAllUsers =
    """
    query {
      users
      {
        collegeId
        emailId
        name
      }
      }
    """;


const String getUserByEmailId =
    """
    query getUsers(\emailId: String!) {
      users(where: {emailId: {_eq: "\emailId"}}) {
      collegeId
      emailId
      name
        }
      }
    """;
