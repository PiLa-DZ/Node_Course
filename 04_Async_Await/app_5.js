// *** Async/Await vs Promises vs Callbacks ***
// *** With Callbacks ***
function getUser(userId, callback) {
  setTimeout(() => {
    callback(null, { id: userId, name: 'John' });
  }, 1000);
}

function getUserPosts(user, callback) {
  setTimeout(() => {
    callback(null, ['Post 1', 'Post 2']);
  }, 1000);
}

// Using callbacks
getUser(1, (error, user) => {
  if (error) {
    console.error(error);
    return;
  }
  console.log('User:', user);
  
  getUserPosts(user, (error, posts) => {
    if (error) {
      console.error(error);
      return;
    }
    console.log('Posts:', posts);
  });
});
