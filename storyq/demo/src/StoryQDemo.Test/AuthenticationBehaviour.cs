using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using NSubstitute;
using NUnit.Framework;
using StoryQ;

namespace StoryQDemo.Test
{
    [TestFixture]
    public class AuthenticationBehaviour
    {
        private Feature authenticate = new Story("Authenticate")
            .InOrderTo("access secure resources")
            .AsA("unauthenticated user")
            .IWant("to sign in");

        [Test]
        public void authenticate_successfully()
        {
            authenticate.WithScenario("authenticate successfully")
                .Given(AUserWithUsername, "stevesmith")
                .And(Password, "elvish")
                .When(TheUserSignsInWith, "stevesmith", "elvish")
                .Then(TheyAuthenticateSuccessfully).ExecuteWithReport(MethodBase.GetCurrentMethod());
        }

        [Test]
        public void authentication_failure()
        {

        }

        private void AUserWithUsername(string username)
        {
            throw new NotImplementedException();
            #region Live Coding Sucks
            // user = new User { UserName = username };
            #endregion
        }

        private void Password(string password)
        {
            throw new NotImplementedException();
            #region Live Coding Sucks
            //user.Password = password;
            #endregion
        }

        private void TheUserSignsInWith(string username, string password)
        {
            throw new NotImplementedException();
            #region Live Coding Sucks
            //var dataService = Substitute.For<IDataService>();
            //dataService.GetUserByUserName(username).Returns(user);
            //var authenticationService = new AuthenticationService(dataService);
            //result = authenticationService.IsValidCredentials(username, password);
            #endregion
        }

        private void TheyAuthenticateSuccessfully()
        {
            throw new NotImplementedException();
            #region Live Coding Sucks
            //Assert.IsTrue(result);
            #endregion
        }

    }

    public class User
    {
        public string UserName { get; private set; }
        public string Password { get; private set; }

        public User(string username, string password)
        {
            UserName = username;
            Password = password;
        }

        public bool IsValid()
        {
            return true;
        }
    }
}
